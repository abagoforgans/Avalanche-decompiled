contract main {




// =====================  Runtime code  =====================


#
#  - sub_0f7921ed(?)
#
const getBalance = eth.balance(this.address)


address owner;
uint256 stor1;
mapping of struct stor2;
address marketAddress;

function market() {
    return marketAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMarketplaceAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function refund(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Bad balance'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}

function sub_4f0323d6(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 98 < 97 or ceil32(ceil32(arg4.length)) + ceil32(ceil32(arg5.length)) + 98 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if msg.value < arg3:
        revert with 0, 'Bad amount'
    stor2[arg1].field_512 = arg3
    stor2[arg1].field_256 = arg2
    if stor2[arg1].field_768:
        if stor2[arg1].field_768 == uint255(stor2[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor2[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor2[arg1].field_768 = 0
            idx = 0
            while (uint255(stor2[arg1].field_768) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg1].field_768 == stor2[arg1].field_769 < 32:
            revert with 0, 34
        if arg4.length:
            stor2[arg1][3][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor2[arg1].field_768 = 0
            idx = 0
            while stor2[arg1].field_769 + 31 / 32 > idx:
                stor2[arg1][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    if stor2[arg1].field_1024:
        if stor2[arg1].field_1024 == uint255(stor2[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            stor2[arg1][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor2[arg1].field_1024 = 0
            idx = 0
            while (uint255(stor2[arg1].field_1024) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg1].field_1024 == stor2[arg1].field_1025 < 32:
            revert with 0, 34
        if arg5.length:
            stor2[arg1][4][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor2[arg1].field_1024 = 0
            idx = 0
            while stor2[arg1].field_1025 + 31 / 32 > idx:
                stor2[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    stor2[arg1].field_1280 = msg.sender or Mask(96, 160, stor2[arg1].field_1280)
}



}
