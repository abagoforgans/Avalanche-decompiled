contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function greet() payable {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    return 'Hello Owner', 0
}



}
