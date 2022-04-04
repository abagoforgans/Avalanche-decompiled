contract main {




// =====================  Runtime code  =====================


const update = 1


uint256 stor0;
address adminAddress;

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return Mask(144, 0, stor0 * arg2 / 10^18)
}

function setP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'onlyadmin'
    stor0 = arg1
}

function transferAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'onlyadmin'
    adminAddress = arg1
}



}
