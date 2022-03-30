contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint8 stor2;
array of struct stor3;
mapping of uint8 stor4;
uint256 sub_db4af1c6;
uint256 sub_18ef24ce;
uint256 sub_a51cc5cb;
uint256 sub_21244ec8;
uint256 sub_f30d40c7;
address stor10;

function sub_18ef24ce(?) {
    return sub_18ef24ce
}

function sub_21244ec8(?) {
    return sub_21244ec8
}

function sub_6a1b82c4(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function owner() {
    return owner
}

function sub_a0f849b5(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_a51cc5cb(?) {
    return sub_a51cc5cb
}

function sub_db4af1c6(?) {
    return sub_db4af1c6
}

function sub_f30d40c7(?) {
    return sub_f30d40c7
}

function _fallback() payable {
  stop
}

function sub_d2cd23c0(?) {
    return sub_db4af1c6, sub_18ef24ce, sub_a51cc5cb, sub_21244ec8, sub_f30d40c7
}

function sub_9e74e808(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[arg1] = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_60e21347(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function sub_7bc6ec1a(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_db4af1c6 = arg1
    sub_18ef24ce = arg2
    sub_a51cc5cb = arg3
    sub_21244ec8 = arg4
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

function sub_4a518fe3(?) {
    require calldata.size - 4 >= 32
    if not stor2[arg1]:
        return ''
    mem[128] = stor1[arg1].field_0
    idx = 128
    s = 0
    while stor1[arg1].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1[arg1].length, data=mem[128 len stor1[arg1].length])
}

function sub_b07fda2b(?) {
    require calldata.size - 4 >= 32
    if not stor4[address(arg1)]:
        return ''
    mem[128] = stor3[address(arg1)].field_0
    idx = 128
    s = 0
    while stor3[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3[address(arg1)].length, data=mem[128 len stor3[address(arg1)].length])
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

function sub_b425232e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == arg1
    if bool(stor4[address(arg1)]) == 1:
        call this.address with:
           value sub_f30d40c7 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2.length >= 21:
        revert with 0, 'Name exceeds character limit.'
    stor4[address(arg1)] = 0
}

function sub_0a79b7e4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    stor2[arg1] = 1
    call this.address with:
       value sub_a51cc5cb wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[arg1] = 0
}

function sub_4d4a8620(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == arg1
    if bool(stor4[address(arg1)]) != 1:
        call this.address with:
           value sub_21244ec8 wei
             gas 2300 * is_zero(value) wei
    else:
        call this.address with:
           value sub_f30d40c7 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2.length >= 21:
        revert with 0, 'Name exceeds character limit.'
    stor3[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor4[address(arg1)] = 1
}

function sub_e6201dfe(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(stor10)
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    if bool(stor2[arg1]) != 1:
        call this.address with:
           value sub_db4af1c6 wei
             gas 2300 * is_zero(value) wei
    else:
        call this.address with:
           value sub_18ef24ce wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2.length >= 21:
        revert with 0, 'Name exceeds character limit.'
    stor1[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[arg1] = 1
}



}
