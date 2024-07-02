DPKG_AB_TMPDIR="${BATS_TMPDIR:-/tmp}"

setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'

    # make data visibile to the tests
    export DPKG_AB_DATA="$BATS_TEST_DIRNAME/data"
    export DPKG_AM_TEST_DEB="$DPKG_AB_DATA/apturl-saf_0.0.1-3_all.deb"
    if [ "$create_temp_dir" = true ]; then
        export TEMP_DIR=$(mktemp -d /tmp/dpkg_am-XXXXXX)
        echo "Created temporary directory: $TEMP_DIR"
    fi
    cd "$BATS_TEST_DIRNAME/dpkg_tests"
}

teardown() {
    if [ "$create_temp_dir" = true ]; then
        rm -rf "$TEMP_DIR"
        echo "Removed temporary directory: $TEMP_DIR"
    fi
}

@test "deb_is_valid Test : valid deb" {
    run  amber valid-test.ab
     echo "Captured output: $output"
    assert_output 'valid'
}

@test "deb_is_valid Test : invalid deb" {
    run  amber invalid-test.ab
    assert_output 'invalid'
}

@test "deb_list_control" {
    expected_output=$(cat $DPKG_AB_DATA/control.txt)
    run  amber control-list-test.ab 
    [ "$output" = "$expected_output" ]
}

@test "deb_list_pkg" {
    expected_output=$(cat $DPKG_AB_DATA/package.txt)
    run  amber package-list-test.ab 
    [ "$output" = "$expected_output" ]
}

@test "deb_list" {
    run  amber list-test.ab 
    assert_output 'valid'
}

@test "deb_extract_debian" {
     
    # Ensure setup is called again to create the temporary directory
    create_temp_dir=true
    setup

    run  amber extract-debian-test.ab 
    run ls "$TEMP_DIR"
    [ "$status" -eq 0 ]
    [ "$output" = "DEBIAN" ]
}

@test "deb_extract_package" {
    # Ensure setup is called again to create the temporary directory
    create_temp_dir=true
    setup

    run  amber extract-package-test.ab 
    run ls "$TEMP_DIR"
    [ "$status" -eq 0 ]
    echo $output 
    [ "$output" = "usr" ]
}

@test "deb_extract" {
    # Ensure setup is called again to create the temporary directory
    create_temp_dir=true
    setup

    run  amber extract-test.ab 
    run ls "$TEMP_DIR"
    [ "$status" -eq 0 ]
    echo "$output"
    [ "$output" = "$(cat $DPKG_AB_DATA/extract.txt)" ]
}
