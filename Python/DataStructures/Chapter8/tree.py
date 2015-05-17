#!/usr/bin/env python
class Tree:
	class Position:
		def element(self):
			raise NotImplementedError('must be implemented by subclass')
		
		def __eq__(self):
			raise NotImplementedError('must be implemented by subclass')

		def __ne__(self, other):
			return not(self == other)

	def root(self):
		raise NotImplementedError('must be implemented by subclass')
	
	def parent(self, p):
		raise NotImplementedError('must be implemented by subclass')

	def children(self, p):
		raise NotImplementedError('must be implemented by subclass')

	def __len__(self):
		raise NotImplementedError('must be implemented by subclass')
	
	def is_root(self, p):
		return self.root() == p

	def is_leaf(self, p):
		return self.num_children(p) == 0

	def is_empty(self):
		return len(self) == 0

	def _height(self, p):
		if self.is_leaf(p):
			return 0
		else:
			return 1 + max(self._height(c) for c in self.children(p))

	def depth(self, p):
		if self.is_root(p):
			return 0
		else:
			return 1 + self.depth(self.parent(p))

	def height(self, p = None):
		if p is None:
			p = self.root()
		else:
			return _height(p)

	def __iter__(self):
		for p in self.positions():
			yield p.element()

	def preorder(self):
		if not self.is_empty():
			for p in self._subtree_preorder(self.root()):
				yield p

	def _subtree_preorder(self,p):
		yield p
		for c in self.children(p):
			for other in self._subtree_preorder(c):
				yield other	

	def positions(self):
		return self.preorder()

	def postorder(self):
		if not self.is_empty():
			for p in self._subtree_postorder(self.root()):
				yield p

	def _subtree__postorder(self, p):
		for c in self.children(p):
			for other in self._subtree_postorder(c):
				yield other
		yield p

	def breathfirst(self):
		if not self.is_empty():
			fringe = LinkedQueue()
			fringe.enqueue(self.root())
			while not fringe.is_empty():
				p = fringe.dequeue()
				yield p
				for c in self.children(p):
					fringe.enqueue(c)

	def preorder_indent(self, T, p, d):
		print(2 * d * ' ' + str(p.element()))
		for c in T.children(p):
			preorder_indent(self, T, c, d + 1)

	def preorder_label(T, p, d, path):
		label = '.'.join(str(j + 1) for j in path)
		print(2 * d * ' ' + label, p.element())
		path.append(0)
		for c in T.children(p):
			preorder_label(T, c, d + 1, path)
			path[-1] += 1
		path.pop()
