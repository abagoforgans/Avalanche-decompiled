contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == stor0)
}

function sub_a97a98c3(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor2 = arg1
}

function sub_856808e7(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor3 = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function withdraw() {
    if bool(eth.balance(this.address)) != 1:
        call stor2 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor3 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor2 with:
           value eth.balance(this.address) - 1 / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor3 with:
           value eth.balance(this.address) - 1 / 2 wei
             gas 2300 * is_zero(value) wei
}



}
