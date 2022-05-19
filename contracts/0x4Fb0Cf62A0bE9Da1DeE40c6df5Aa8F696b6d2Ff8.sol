contract main {




// =====================  Runtime code  =====================


#
#  - sell(uint256 arg1, uint256 arg2, address[] arg3, address arg4)
#  - buy9()
#  - buy()
#
uint32 stor0;
address owner;
uint256 stor0;
address stor1;
address stor2;
array of address stor3;
uint256 token_reserve;
address tokenAddress;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 success; offset 160
uint64 stor15; offset 216
uint64 stor15; offset 200
uint64 stor15; offset 192
uint128 stor15; offset 184
uint128 stor15; offset 176
uint128 stor15; offset 168
uint128 stor15; offset 160
address stor15;
uint256 stor16;

function success() {
    return bool(success)
}

function owner() {
    return address(owner)
}

function token_reserve() {
    return token_reserve
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function returnTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function returnBalance() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call stor1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function setOptions(address[] arg1, address[] arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6, bool arg7, bool arg8, bool arg9, uint256 arg10, uint256 arg11, uint256 arg12) {
    require calldata.size - 4 >= 384
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    stor3.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor3[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    require stor3.length - 2 < stor3.length
    require stor3.length - 1 < stor3.length
    if stor3[stor3.length] == stor3[stor3.length]:
        revert with 0, 'BotLibrary: IDENTICAL_ADDRESSES'
    if stor3[stor3.length] < stor3[stor3.length]:
        if not stor3[stor3.length]:
            revert with 0, 'BotLibrary: ZERO_ADDRESS'
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 40
        address(stor15.field_0) = address(sha3(0, stor2, sha3(stor3[stor3.length], stor3[stor3.length]), stor16))
    else:
        if not stor3[stor3.length]:
            revert with 0, 'BotLibrary: ZERO_ADDRESS'
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 40
        address(stor15.field_0) = address(sha3(0, stor2, sha3(stor3[stor3.length], stor3[stor3.length]), stor16))
    require stor3.length - 1 < stor3.length
    tokenAddress = stor3[stor3.length]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(stor15.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    token_reserve = ext_call.return_data[0]
    stor6 = arg3
    stor7 = arg4
    if stor9.length != arg2.length:
        stor9.length = arg2.length
        if not arg2.length:
            idx = 0
            while stor9.length > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg1.length) + 160
            while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                stor9[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while stor9.length > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
    stor8 = arg5
    Mask(96, 0, stor15.field_160) = 0
    Mask(72, 0, stor15.field_184) = Mask(72, 0, arg6)
    uint64(stor15.field_192) = uint64(arg7)
    stor15.field_216 % 1099511627776 = arg9 % 1099511627776
    Mask(80, 0, stor15.field_176) = 0
    Mask(88, 0, stor15.field_168) = 0
    stor15.field_200 % 72057594037927936 = arg8 % 72057594037927936
    stor11 = arg10
    stor10 = 0
    stor13 = 0
    stor12 = arg11
    stor14 = arg12
}



}
