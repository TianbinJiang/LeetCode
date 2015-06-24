/*
	Find closest value of a BST
*/
// There is nothing special. Because it is a BST, left value is smaller than root
// right value is larger than the root.
BiTNode* closestBST(BiTNode* root, int val){
	if(!root) return NULL;
	if(root->data == val) return root;
	if(val < root->data){
		if(!root->left) return root;
		BiTNode* tmp = closetBST(root->lchild, val);
		return abs(val - tmp->data) < abs(val - root->val)? tmp : root;
	} else {
		if(!root->right) return root;
		BiTNode* tmp = closetBST(root->rchild, val);
		return abs(val - tmp->data) < abs(val - root->val) ? tmp: root;
	}
	return NULL;
}
