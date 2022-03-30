contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;

function _fallback() payable {
    revert
}

function get() payable {
    return stor1, stor2
}

function reset() payable {
    stor1 = 0
    stor2 = 0
}

function set() payable {
    stor1 = tx.origin
    stor2 = msg.sender
}



}
