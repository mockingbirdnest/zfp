mkdir -p build
pushd build
cmake \
    -DCMAKE_C_COMPILER:FILEPATH=`which clang` \
    -DCMAKE_CXX_COMPILER:FILEPATH=`which clang++` \
    -DCMAKE_C_FLAGS="${C_FLAGS?}" \
    -DCMAKE_CXX_FLAGS="${CXX_FLAGS?}" \
    -DCMAKE_LD_FLAGS="${LD_FLAGS?}" \
    -DBUILD_SHARED_LIBS=OFF \
    -DZFP_WITH_OPENMP=OFF \
    ..
make -j8
popd
