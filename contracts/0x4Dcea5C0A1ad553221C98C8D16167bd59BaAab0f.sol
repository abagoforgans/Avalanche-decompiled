contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
array of struct commission;
array of address sub_0f3ceab6;
mapping of uint256 sub_96d6ba44;
uint256 stor4;
uint256 stor5;

function sub_0f3ceab6(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_0f3ceab6.length
    return sub_0f3ceab6[arg1]
}

function commissions(uint256 arg1) {
    return commission[arg1][0 len commission[arg1].length].field_0
}

function getCommission(uint256 arg1) {
    return commission[arg1][0 len commission[arg1].length].field_0
}

function sub_62b19414(?) {
    return commission.length
}

function owner() {
    return owner
}

function sub_96d6ba44(?) {
    require calldata.size - 4 >= 32
    return sub_96d6ba44[arg1]
}

function sub_bbe264a9(?) {
    return sub_96d6ba44[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function sub_26103f13(?) {
    require sub_96d6ba44[address(msg.sender)] <= test266151307()
    # nil
}

function sub_c86421d4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function setMax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function commission(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.value >= stor4
    if arg1.length >= 25:
        revert with 0, 'Name exceeds character limit.'
    commission.length++
    commission[commission.length].field_0 = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        commission[commission.length + s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while commission[commission.length].length + 31 / 32 > idx:
        commission[commission.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_0f3ceab6.length++
    sub_0f3ceab6[sub_0f3ceab6.length] = msg.sender
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_96d6ba44[address(msg.sender)]++
    emit 0x31547f40: msg.sender, Array(len=arg1.length, data=arg1[all])
}

function sub_f7ebb086(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < commission.length
    idx = 128
    s = 0
    while commission[arg1].length + 96 > idx:
        mem[idx + 32] = commission[arg1 + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < sub_0f3ceab6.length
    require commission.length - 1 < commission.length
    require arg1 < commission.length
    if 31 >= stor[('name', 'commission', 1) + commission.length - 1].length:
        commission[arg1].field_0 = commission[commission.length].field_0
        idx = 0
        while commission[arg1].length + 31 / 32 > idx:
            commission[arg1 + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        commission[arg1].field_0 = Mask(255, 1, (256 * not commission[commission.length].field_0) - 1 and commission[commission.length].field_0) + 1
        if not Mask(255, 1, (256 * not commission[commission.length].field_0) - 1 and commission[commission.length].field_0):
            idx = 0
            while commission[arg1].length + 31 / 32 > idx:
                commission[arg1 + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[('name', 'commission', 1) + commission.length - 1].length + 31 / 32 > idx:
                commission[arg1 + s].field_0 = stor[idx + sha3(('name', 'commission', 1) + commission.length - 1)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[('name', 'commission', 1) + commission.length - 1].length + 31 / 32
            while commission[arg1].length + 31 / 32 > idx:
                commission[arg1 + idx].field_0 = 0
                idx = idx + 1
                continue 
    require commission.length - 1 < sub_0f3ceab6.length
    require arg1 < sub_0f3ceab6.length
    sub_0f3ceab6[arg1] = sub_0f3ceab6[stor1.length]
    require commission.length
    commission[commission.length].field_0 = 0
    if 31 < stor[('name', 'commission', 1) + commission.length - 1].length:
        idx = 0
        while stor[('name', 'commission', 1) + commission.length - 1].length + 31 / 32 > idx:
            stor[idx + sha3(('name', 'commission', 1) + commission.length - 1)].field_0 = 0
            idx = idx + 1
            continue 
    commission.length--
    require sub_0f3ceab6.length
    sub_0f3ceab6[sub_0f3ceab6.length] = 0
    sub_0f3ceab6.length--
    sub_96d6ba44[stor2[arg1]]--
    call msg.sender with:
       value stor4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
