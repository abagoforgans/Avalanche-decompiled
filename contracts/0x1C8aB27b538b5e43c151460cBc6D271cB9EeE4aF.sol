contract main {




// =====================  Runtime code  =====================


#
#  - tokenStorage(address arg1, uint256 arg2)
#
const BlockTimestamp = block.timestamp


address owner;
address stor1;
uint256 geUnlockTime;
uint256 standardTokenCreationFees;
uint8 feesEnabled;
address feesAddress; offset 8
mapping of struct stor5;
mapping of address tokenToOwner;
mapping of uint256 individualTokenCreationCount;
mapping of uint8 stor8;

function verifiedDxMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function tokenToOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(tokenToOwner[arg1])
}

function standardTokenCreationFees() {
    return standardTokenCreationFees
}

function owner() {
    return owner
}

function feesAddress() {
    return feesAddress
}

function feesEnabled() {
    return bool(feesEnabled)
}

function geUnlockTime() {
    return geUnlockTime
}

function individualTokenCreationCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return individualTokenCreationCount[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit code.data[9619 len 32]: owner, 0
    owner = 0
}

function updateFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    standardTokenCreationFees = arg1
}

function enableFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if feesEnabled:
        revert with 0, 'fees already enabled'
    feesEnabled = 1
}

function disableFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not feesEnabled:
        revert with 0, 'fees already disabled'
    feesEnabled = 0
}

function updateFeesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'address cant be 0x0'
    feesAddress = arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit code.data[9619 len 32]: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit code.data[9619 len 32]: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit code.data[9619 len 32]: owner, arg1
    owner = arg1
}

function CreateStandardToken(string arg1, string arg2, uint8 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if feesEnabled:
        if msg.value < standardTokenCreationFees:
            revert with 0, 'msg.value must be >= standardTokenCreationFees!'
        call feesAddress with:
           value standardTokenCreationFees wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if ceil32(arg1.length) <= arg1.length:
        create contract with 0 wei
                        code: code.data[4572 len 5047], msg.sender, Array(len=arg4, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 4603 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 192, arg3 << 248
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 5337] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 5369 len ceil32(arg2.length)] = arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 4603 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 5369] = 0
        create contract with 0 wei
                        code: code.data[4572 len 5047], msg.sender, Array(len=arg4, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 5369 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 192, arg3 << 248
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5[msg.sender][stor7[msg.sender]].field_0 = 1
    stor5[msg.sender][stor7[msg.sender]].field_256 = block.timestamp
    if stor5[msg.sender][stor7[msg.sender]].field_512:
        if stor5[msg.sender][stor7[msg.sender]].field_512 == stor5[msg.sender][stor7[msg.sender]].field_513 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[msg.sender][stor7[msg.sender]][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[msg.sender][stor7[msg.sender]].field_512 = 0
            idx = 0
            while stor5[msg.sender][stor7[msg.sender]].field_513 + 31 / 32 > idx:
                stor5[msg.sender][stor7[msg.sender]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[msg.sender][stor7[msg.sender]].field_512 == stor5[msg.sender][stor7[msg.sender]].field_513 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[msg.sender][stor7[msg.sender]][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[msg.sender][stor7[msg.sender]].field_512 = 0
            idx = 0
            while stor5[msg.sender][stor7[msg.sender]].field_513 + 31 / 32 > idx:
                stor5[msg.sender][stor7[msg.sender]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    if stor5[msg.sender][stor7[msg.sender]].field_768:
        if stor5[msg.sender][stor7[msg.sender]].field_768 == stor5[msg.sender][stor7[msg.sender]].field_769 < 32:
            revert with 0, 34
        if arg2.length:
            stor5[msg.sender][stor7[msg.sender]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[msg.sender][stor7[msg.sender]].field_768 = 0
            idx = 0
            while stor5[msg.sender][stor7[msg.sender]].field_769 + 31 / 32 > idx:
                stor5[msg.sender][stor7[msg.sender]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[msg.sender][stor7[msg.sender]].field_768 == stor5[msg.sender][stor7[msg.sender]].field_769 < 32:
            revert with 0, 34
        if arg2.length:
            stor5[msg.sender][stor7[msg.sender]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[msg.sender][stor7[msg.sender]].field_768 = 0
            idx = 0
            while stor5[msg.sender][stor7[msg.sender]].field_769 + 31 / 32 > idx:
                stor5[msg.sender][stor7[msg.sender]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    stor5[msg.sender][stor7[msg.sender]].field_1024 = arg4
    stor5[msg.sender][stor7[msg.sender]].field_1280 = address(create.new_address)
    uint256(tokenToOwner[address(create.new_address)]) = msg.sender or Mask(96, 160, uint256(tokenToOwner[address(create.new_address)]))
    stor8[address(create.new_address)] = 1
    if individualTokenCreationCount[msg.sender] == -1:
        revert with 0, 17
    individualTokenCreationCount[msg.sender]++
    return address(create.new_address)
}



}
