mkdir -p Starlet
cd Starlet || exit

user=Masonlet
test_repo=${1:-StarletSamples}

repos=(
  ${user}/StarletMath 
  ${user}/StarletControls 
  ${user}/StarletScene 
  ${user}/StarletGraphics 
  ${user}/StarletParsers 
  ${user}/StarletEngine 
  ${user}/${test_repo}
)

for repo in "${repos[@]}"; do
  if [ ! -d "$repo" ]; then
    git clone https://github.com/$repo.git
  else
    echo "$repo already exists!"
  fi
  echo ""
done

echo "Finished cloning, building.."
cd ..

mkdir -p build
cd build || exit
cmake -DBUILD_LOCAL=ON -DTEST_REPO=${test_repo} ..