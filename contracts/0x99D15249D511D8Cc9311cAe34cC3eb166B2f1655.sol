contract main {




// =====================  Runtime code  =====================


address owner;
uint256 price;
mapping of uint8 stor2;

function owner() {
    return owner
}

function hasAccess(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only owner can set price'
    price = arg1
}

function deposit() payable {
    if msg.value < price:
        revert with 0, 'less than price'
    stor2[msg.sender] = 1
    emit AccessGranted(msg.value, msg.sender);
}

function revoke(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner can revoke access'
    stor2[address(arg1)] = 0
    emit AccessRevoked(arg1);
}

function grant(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner can grant access'
    stor2[address(arg1)] = 1
    emit AccessGranted(0, arg1);
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
