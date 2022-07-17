contract main {




// =====================  Runtime code  =====================


address owner;
address targetAddress;

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function _fallback() payable {
    revert
}

function set(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    targetAddress = arg1
}



}
