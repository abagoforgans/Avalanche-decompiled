contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
array of uint256 name;
uint256 sub_f2fc35d3;
mapping of uint256 sub_b7783df0;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function sub_b7783df0(?) {
    require calldata.size - 4 >= 32
    return sub_b7783df0[arg1]
}

function sub_f2fc35d3(?) {
    return sub_f2fc35d3
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f2fc35d3 = arg1
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4978d2c3(?) payable {
    require calldata.size - 4 >= 32
    require msg.value >= sub_f2fc35d3
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b7783df0[arg1]++
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
