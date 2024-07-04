HOOKS_DIR=".githooks"
TARGET_DIR=".git/hooks"

mkdir -p $TARGET_DIR

for hook in $HOOKS_DIR/*; do
  hook_name=$(basename $hook)
  ln -sf "../../$HOOKS_DIR/$hook_name" "$TARGET_DIR/$hook_name"
done

echo "Git hooks are set up."