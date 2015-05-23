#!/usr/bin/env python

from hashmap import MapBase, HashMapBase

class ProbeHashMap(HashMapBase):
	_AVAIL = object() # sentinal marks locations of previsous deletions

	def _is_available(self, j):
		return self._table[j] is None or self._table[j] is ProbeHashMap._AVAIL

	def _find_slot(self, j, k):
		""" Search for key k in bucket at index j
		Return (success, index) tuple, described as follows
		if match was found, success is True and index denotes its location
		if no match found, False returned and index denotes first available slot
		"""
		firstAvail = None
		while True:
			if self._is_available(j):
				if firstAvail is None:
					firstAvail = j
				if self._table[j] is None:
					return (False, firstAvail)
			elif k == self._table[j]._key:
				return (True, j)
			j = (j + 1) % len(self._table)

	def _bucket_getitem(self, j, k):
		found, s = self._find_slot(j, k)
		if not found:
			raise KeyError('key error')
		return self._table[s]._value

	def _bucket_setitem(self, j, k, v):
		found, s = self._find_slot(j, k)
		if not found:
			self._table[s] = self._Item(k, v)
			self._n += 1
		else:
			self._table[s]._value = v

	def _bucket_delitem(self, j, k):
		found, s = self._find_slot(j, k)
		if not found:
			raise KeyError('key error')
		self._table[s] = ProbeHashMap._AVAIL
		
	def __iter__(self):
		for j in range(len(self._table)):
			if not self.is_available(j):
				yield self._table[j]._key
