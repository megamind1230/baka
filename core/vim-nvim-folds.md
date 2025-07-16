z+ some char that is
	small
	capital{recursively}

`zf` mark selection as foldable and fold

`zf{motion}`or  selection zf > `zfi{` create fold
				`za` or `zo`> toggle fold
					 `zA` > toggle nested folds recursively
				`zd` > delete
				`zi` > toggle fold in whole file
					`zM` > Merge/close folds in whole file {foldables}
					`zR` > Release/open folds in whole file
 folds are volatile
	   but can be saved with `:mkview`  and `:laodview`

# fold text 
- all has `z`
	- `zf`
	- `zd`
	- `zD`
	- `zE`
	- `zo`
	- `zO`
	- `zc`
	- `zC`
	- `zR`
	- `zM`
	- `za`
	- `zA`
	- `zj`
	- `zK`
	- `[z`
	- `]z`