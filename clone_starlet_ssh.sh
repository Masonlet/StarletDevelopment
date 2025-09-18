mkdir -p Starlet
cd Starlet

repos=(StarletMath StarletControls StarletScene StarletGraphics StarletParsers StarletEngine StarletSamples StarletStarter)

for repo in "${repos[@]}"; do
  if [ ! -d "$repo" ]; then
    git clone git@github.com:Masonlet/$repo.git
  else
    echo "$repo already exists!"
  fi
  echo""
done

echo "Finished, closing"
sleep 1.5