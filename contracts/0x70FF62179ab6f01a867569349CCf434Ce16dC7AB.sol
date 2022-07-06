contract main {




// =====================  Runtime code  =====================


#
#  - cancelBid(uint256 arg1)
#  - sub_aaa1fc8c(?)
#
address owner;
address tokenAddress;
address feeManagerAddress;
address sub_6ba1805dAddress;
address assetManagerAddress;
array of struct bids;
uint8 sub_7a91def9;
uint256 sub_6065dc3c;

function bids(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < bids.length
    if bids[arg1].field_0 >= 4:
        revert with 0, 33
    if bids[arg1].field_1952 >= 2:
        revert with 0, 33
    return bids[arg1].field_0, 
           bids[arg1].field_0,
           bids[arg1].field_256,
           bids[arg1].field_512,
           bids[arg1].field_768,
           bids[arg1].field_1024,
           bids[arg1].field_1280,
           bids[arg1].field_1536,
           bids[arg1].field_1792,
           bids[arg1].field_1952
}

function sub_6065dc3c(?) payable {
    return sub_6065dc3c
}

function sub_6ba1805d(?) payable {
    return sub_6ba1805dAddress
}

function sub_7a91def9(?) payable {
    return sub_7a91def9
}

function owner() payable {
    return owner
}

function assetManager() payable {
    return assetManagerAddress
}

function feeManager() payable {
    return feeManagerAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b0f6595b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        revert with 0, 'invalid option manager address'
    sub_6ba1805dAddress = address(arg1)
}

function sub_7cea669b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) < 100:
        revert with 0, 'invalid fee range'
    if uint8(arg1) > 1000:
        revert with 0, 'invalid fee range'
    sub_7a91def9 = uint8(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_e00dc0d5(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_6ba1805dAddress)
    staticcall sub_6ba1805dAddress.0x2041a38 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getOption(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((2 * ceil32(return_data.size)) + 384 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] < 3
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] < 2
    if ext_call.return_data[44 len 20] != msg.sender:
        revert with 0, 'Invalid Caller'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x13afc111 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Option not enabled'
    if ext_call.return_data[0] > 2:
        revert with 0, 33
    if ext_call.return_data[0]:
        revert with 0, 'Invalid state'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4006929a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb4664758: arg1
}

function sub_3cf94b02(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_6ba1805dAddress)
    staticcall sub_6ba1805dAddress.0x2041a38 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getOption(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((2 * ceil32(return_data.size)) + 384 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] < 3
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] < 2
    if 24 * 3600 > !block.timestamp:
        revert with 0, 17
    if ext_call.return_data[192] <= block.timestamp + (24 * 3600):
        revert with 0, 'Option not eligble for transfer'
    if ext_call.return_data[44 len 20] != msg.sender:
        revert with 0, 'Invalid Caller'
    if ext_call.return_data[0] > 2:
        revert with 0, 33
    if ext_call.return_data[0]:
        revert with 0, 'Invalid state'
    require ext_code.size(sub_6ba1805dAddress)
    staticcall sub_6ba1805dAddress.minimumPremium() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 < ext_call.return_data[0]:
        revert with 0, 'amount < minimum premium'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2a0637bc with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x21230eba: arg1, arg2
}

function sub_88fca626(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'invalid max fee range'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 > 100:
            revert with 0, 'invalid max fee range'
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if 10^ext_call.return_data[31 len 1] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if arg1 > 100 * 10^ext_call.return_data[31 len 1]:
                revert with 0, 'invalid max fee range'
        else:
            if var29005 > 1:
                s = var29001
                t = var29002
                u = var29005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if s * s * t > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if arg1 > 100 * s * s * t:
                            revert with 0, 'invalid max fee range'
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if s * s * s * t > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if arg1 > 100 * s * s * s * t:
                            revert with 0, 'invalid max fee range'
                    sub_6065dc3c = arg1
                revert with 0, 17
            if var29002 > -1 / var29001:
                revert with 0, 17
            if var29001 * var29002 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if arg1 > 100 * var29001 * var29002:
                revert with 0, 'invalid max fee range'
    sub_6065dc3c = arg1
}

function sub_69ec825a(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = arg5
    mem[256] = arg6
    require arg7 < 2
    mem[288] = arg7
    mem[324] = address(arg2)
    require ext_code.size(assetManagerAddress)
    staticcall assetManagerAddress.0x2965c199 with:
            gas gas_remaining wei
           args address(arg2)
    mem[320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Invalid Asset pair'
    mem[ceil32(return_data.size) + 324] = address(arg2)
    require ext_code.size(assetManagerAddress)
    staticcall assetManagerAddress.0xd1b4a21c with:
            gas gas_remaining wei
           args address(arg2)
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 < ext_call.return_data[0]:
        revert with 0, 'Quantity < purchase limit'
    mem[(2 * ceil32(return_data.size)) + 324] = address(arg2)
    require ext_code.size(assetManagerAddress)
    staticcall assetManagerAddress.getMaxPeriod(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Expiration > max expiry'
    if 24 * 3600 > arg1:
        revert with 0, 'Expiration < 1 day'
    require ext_code.size(sub_6ba1805dAddress)
    staticcall sub_6ba1805dAddress.minimumPremium() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 < ext_call.return_data[0]:
        revert with 0, 'amount < minimum premium'
    if arg1 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if arg6 > 3 * arg1:
        revert with 0, 'validity > expiry'
    if arg6 <= 600:
        revert with 0, 'validity > 10 minutes'
    mem[(6 * ceil32(return_data.size)) + 320] = 0
    mem[(6 * ceil32(return_data.size)) + 352] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 384] = arg4
    mem[(6 * ceil32(return_data.size)) + 416] = arg3
    mem[(6 * ceil32(return_data.size)) + 448] = arg5
    mem[(6 * ceil32(return_data.size)) + 644] = arg5
    mem[(6 * ceil32(return_data.size)) + 676] = msg.sender
    require ext_code.size(sub_6ba1805dAddress)
    staticcall sub_6ba1805dAddress.0x6afb33e6 with:
            gas gas_remaining wei
           args arg5, msg.sender
    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 512] = arg1
    if block.timestamp > !arg6:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 544] = block.timestamp + arg6
    mem[(6 * ceil32(return_data.size)) + 576] = address(arg2)
    if arg7 > 1:
        revert with 0, 33
    mem[(6 * ceil32(return_data.size)) + 608] = arg7
    bids.length++
    bids[bids.length].field_0 = 0
    bids[bids.length].field_256 = 0
    bids[bids.length].field_8 = msg.sender
    bids[bids.length].field_256 = arg4
    bids[bids.length].field_512 = arg3
    bids[bids.length].field_768 = arg5
    bids[bids.length].field_1024 = ext_call.return_data[0]
    bids[bids.length].field_1280 = arg1
    bids[bids.length].field_1536 = block.timestamp + arg6
    bids[bids.length].field_1792 = address(arg2)
    if arg7 > 1:
        revert with 0, 33
    bids[bids.length].field_1792 = address(arg2)
    bids[bids.length].field_1952 = Mask(96, 0, arg7)
    if bids.length >= bids.length:
        revert with 0, 50
    if arg5 > !bids[bids.length].field_1024:
        revert with 0, 17
    mem[(7 * ceil32(return_data.size)) + 644] = msg.sender
    mem[(7 * ceil32(return_data.size)) + 676] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(7 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5 + bids[bids.length].field_1024:
        revert with 0, 'place bid:amount exceeds allowance'
    if bids.length >= bids.length:
        revert with 0, 50
    if arg5 > !bids[bids.length].field_1024:
        revert with 0, 17
    mem[(8 * ceil32(return_data.size)) + 676] = msg.sender
    mem[(8 * ceil32(return_data.size)) + 708] = this.address
    mem[(8 * ceil32(return_data.size)) + 740] = arg5 + bids[bids.length].field_1024
    mem[(8 * ceil32(return_data.size)) + 640] = 100
    mem[(8 * ceil32(return_data.size)) + 676 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(8 * ceil32(return_data.size)) + 672 len 4] = unknown_0x23b872dd(?????)
    mem[(8 * ceil32(return_data.size)) + 772] = 32
    mem[(8 * ceil32(return_data.size)) + 804] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(8 * ceil32(return_data.size)) + 836 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg5 + bids[bids.length].field_1024, 0
    mem[(8 * ceil32(return_data.size)) + 936] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg5 + bids[bids.length].field_1024, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg5 + bids[bids.length].field_1024, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg1:
                revert with memory
                  from 128
                   len arg1
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1:
            require arg1 >= 32
            require arg2 == bool(arg2)
            if not arg2:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(8 * ceil32(return_data.size)) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(8 * ceil32(return_data.size)) + 868] == bool(mem[(8 * ceil32(return_data.size)) + 868])
            if not mem[(8 * ceil32(return_data.size)) + 868]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x5445de3f: bids.length, msg.sender
}

function sub_f5ce3bc0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= bids.length:
            revert with 0, 50
        mem[0] = 5
        if bids[cd[((32 * idx) + cd[4] + 36)]].field_1536 < block.timestamp:
            if bids[cd[((32 * idx) + cd[4] + 36)]].field_0 > 3:
                revert with 0, 33
            if not bids[cd[((32 * idx) + cd[4] + 36)]].field_0:
                bids[cd[((32 * idx) + cd[4] + 36)]].field_0 = 3
                if bids[cd[((32 * idx) + cd[4] + 36)]].field_768 and sub_7a91def9 > -1 / bids[cd[((32 * idx) + cd[4] + 36)]].field_768:
                    revert with 0, 17
                if bids[cd[((32 * idx) + cd[4] + 36)]].field_768 > !bids[cd[((32 * idx) + cd[4] + 36)]].field_1024:
                    revert with 0, 17
                if bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000 <= sub_6065dc3c:
                    if bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 < bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000:
                        revert with 0, 17
                    _259 = mem[64]
                    mem[mem[64] + 36] = bids[cd[((32 * idx) + cd[4] + 36)]].field_8
                    mem[mem[64] + 68] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - (bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000)
                    _268 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_268 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_268 + 36 len 28]
                    mem[64] = _259 + 164
                    mem[_259 + 100] = 32
                    mem[_259 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    _317 = mem[_268]
                    s = 0
                    while s < _317:
                        mem[s + _259 + 164] = mem[s + _268 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_317) > _317:
                        mem[_317 + _259 + 164] = 0
                    call tokenAddress.mem[_259 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_259 + 168 len _317 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_259 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_259 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _259 + 232] = mem[idx + _259 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_259 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_259 + 164] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - (bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000)
                        mem[_259 + 196] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000
                    else:
                        mem[64] = _259 + ceil32(return_data.size) + 165
                        mem[_259 + 164] = return_data.size
                        mem[_259 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_259 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_259 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _259 + ceil32(return_data.size) + 233] = mem[idx + _259 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_259 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_259 + 196] == bool(mem[_259 + 196])
                            if not mem[_259 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_259 + ceil32(return_data.size) + 165] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - (bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000)
                        mem[_259 + ceil32(return_data.size) + 197] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000
                    emit 0xc968069d: bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - (bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000), bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000, cd[((32 * idx) + cd[4] + 36)]
                    if 0 > !(bids[cd[((32 * idx) + cd[4] + 36)]].field_768 * sub_7a91def9 / 10000):
                        revert with 0, 17
                else:
                    if bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 < sub_6065dc3c:
                        revert with 0, 17
                    _270 = mem[64]
                    mem[mem[64] + 36] = bids[cd[((32 * idx) + cd[4] + 36)]].field_8
                    mem[mem[64] + 68] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - sub_6065dc3c
                    _276 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_276 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_276 + 36 len 28]
                    mem[64] = _270 + 164
                    mem[_270 + 100] = 32
                    mem[_270 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    _325 = mem[_276]
                    s = 0
                    while s < _325:
                        mem[s + _270 + 164] = mem[s + _276 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_325) > _325:
                        mem[_325 + _270 + 164] = 0
                    call tokenAddress.mem[_270 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_270 + 168 len _325 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_270 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_270 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _270 + 232] = mem[idx + _270 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_270 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_270 + 164] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - sub_6065dc3c
                        mem[_270 + 196] = sub_6065dc3c
                    else:
                        mem[64] = _270 + ceil32(return_data.size) + 165
                        mem[_270 + 164] = return_data.size
                        mem[_270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_270 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_270 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _270 + ceil32(return_data.size) + 233] = mem[idx + _270 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_270 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_270 + 196] == bool(mem[_270 + 196])
                            if not mem[_270 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_270 + ceil32(return_data.size) + 165] = bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - sub_6065dc3c
                        mem[_270 + ceil32(return_data.size) + 197] = sub_6065dc3c
                    emit 0xc968069d: bids[cd[((32 * idx) + cd[4] + 36)]].field_768 + bids[cd[((32 * idx) + cd[4] + 36)]].field_1024 - sub_6065dc3c, sub_6065dc3c, cd[((32 * idx) + cd[4] + 36)]
                    if 0 > !sub_6065dc3c:
                        revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _239 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = 0
    _240 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_239 + 100] = 32
    mem[_239 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    _248 = mem[_240]
    mem[_239 + 164 len ceil32(mem[_240])] = mem[_240 + 32 len ceil32(mem[_240])]
    if ceil32(_248) > _248:
        mem[_248 + _239 + 164] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args mem[_239 + 168 len _248 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_239 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_239 + 196] == bool(mem[_239 + 196])
            if not mem[_239 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 0
}

function sub_2c8ff00c(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= bids.length:
        revert with 0, 50
    if block.timestamp > bids[arg1].field_1536:
        revert with 0, 'bid expired'
    if bids[arg1].field_0 > 3:
        revert with 0, 33
    if bids[arg1].field_0:
        revert with 0, 'Bid is not active'
    require ext_code.size(sub_6ba1805dAddress)
    staticcall sub_6ba1805dAddress.0x2041a38 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getOption(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((2 * ceil32(return_data.size)) + 384 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] < 3
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[96]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[128]
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[160]
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[224]
    require ext_call.return_data[256] < 2
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[256]
    if bids[arg1].field_512 != ext_call.return_data[96]:
        revert with 0, 'bid and ask are not same'
    if bids[arg1].field_256 != ext_call.return_data[64]:
        revert with 0, 'bid and ask are not same'
    if ext_call.return_data[192] < block.timestamp:
        revert with 0, 17
    if bids[arg1].field_1280 / 24 * 3600 != ext_call.return_data[192] - block.timestamp / 24 * 3600:
        revert with 0, 'bid and ask are not same'
    if ext_call.return_data[256] > 1:
        revert with 0, 33
    if bids[arg1].field_1952 > 1:
        revert with 0, 33
    if bids[arg1].field_1952 != ext_call.return_data[256]:
        revert with 0, 'bid and ask are not same'
    if ext_call.return_data[236 len 20] != bids[arg1].field_1792:
        revert with 0, 'bid and ask are not same'
    if ext_call.return_data[44 len 20] != msg.sender:
        revert with 0, 'caller cannot settle this bid'
    mem[(2 * ceil32(return_data.size)) + 388] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x13afc111 with:
            gas gas_remaining wei
           args arg2
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_6ba1805dAddress)
    staticcall sub_6ba1805dAddress.0x2041a38 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getOption(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[(6 * ceil32(return_data.size)) + 384 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((7 * ceil32(return_data.size)) + 672 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] < 3
    mem[(7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(7 * ceil32(return_data.size)) + 416] = ext_call.return_data[32]
    mem[(7 * ceil32(return_data.size)) + 448] = ext_call.return_data[64]
    mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[96]
    mem[(7 * ceil32(return_data.size)) + 512] = ext_call.return_data[128]
    mem[(7 * ceil32(return_data.size)) + 544] = ext_call.return_data[160]
    mem[(7 * ceil32(return_data.size)) + 576] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    mem[(7 * ceil32(return_data.size)) + 608] = ext_call.return_data[224]
    require ext_call.return_data[256] < 2
    mem[(7 * ceil32(return_data.size)) + 640] = ext_call.return_data[256]
    if 24 * 3600 > !block.timestamp:
        revert with 0, 17
    if ext_call.return_data[192] <= block.timestamp + (24 * 3600):
        revert with 0, 'Option not eligble for transfer'
    if ext_call.return_data[0]:
        mem[(7 * ceil32(return_data.size)) + 676] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x13afc111 with:
                gas gas_remaining wei
               args arg2
        mem[(7 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Option not enabled for transfer'
        if ext_call.return_data[0] != bids[arg1].field_768:
            revert with 0, 'Invalid negotiated amount'
        if ext_call.return_data[0] > 2:
            revert with 0, 33
        if ext_call.return_data[0]:
            revert with 0, 'Invalid state'
        if ext_call.return_data[44 len 20] == bids[arg1].field_8:
            revert with 0, 'Self option transfer is not allowed'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4006929a with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_6ba1805dAddress)
        call sub_6ba1805dAddress.setTransactionFee(uint256 arg1) with:
             gas gas_remaining wei
            args bids[arg1].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xbda16634 with:
             gas gas_remaining wei
            args arg2, bids[arg1].field_8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd3b3781d: ext_call.return_data[0], bids[arg1].field_1024, arg2, address(ext_call.return_data[32]), bids[arg1].field_8
        bids[arg1].field_0 = 2
        mem[(8 * ceil32(return_data.size)) + 708] = address(ext_call.return_data[32])
        mem[(8 * ceil32(return_data.size)) + 740] = bids[arg1].field_768
        mem[(8 * ceil32(return_data.size)) + 672] = 68
        mem[(8 * ceil32(return_data.size)) + 708 len 28] = address(ext_call.return_data[32]) << 64
        mem[(8 * ceil32(return_data.size)) + 704 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + 772] = 32
        mem[(8 * ceil32(return_data.size)) + 804] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 836 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[32]) << 64, 0, bids[arg1].field_768, 0
        mem[(8 * ceil32(return_data.size)) + 904] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[32]) << 64, 0, bids[arg1].field_768, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[32]) << 64, 0, bids[arg1].field_768, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(8 * ceil32(return_data.size)) + 872] = sub_6ba1805dAddress
            mem[(8 * ceil32(return_data.size)) + 904] = bids[arg1].field_1024
            mem[(8 * ceil32(return_data.size)) + 836] = 68
            mem[(8 * ceil32(return_data.size)) + 868 len 4] = unknown_0xa9059cbb(?????)
            mem[(8 * ceil32(return_data.size)) + 936] = 32
            mem[(8 * ceil32(return_data.size)) + 968] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 1000 len 96] = 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0
            mem[(8 * ceil32(return_data.size)) + 1068] = 0
            call tokenAddress with:
               funct Mask(32, 224, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 1032] == bool(mem[(8 * ceil32(return_data.size)) + 1032])
                    if not mem[(8 * ceil32(return_data.size)) + 1032]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 836] = return_data.size
            mem[(8 * ceil32(return_data.size)) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 868] == bool(mem[(8 * ceil32(return_data.size)) + 868])
                if not mem[(8 * ceil32(return_data.size)) + 868]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = sub_6ba1805dAddress
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = bids[arg1].field_1024
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 837] = 68
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 869 len 4] = unknown_0xa9059cbb(?????)
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] = 32
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1001 len 96] = 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1069] = 0
            call tokenAddress with:
               funct Mask(32, 224, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(12 * ceil32(return_data.size)) + 1102 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1033] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1033])
                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 1033]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(12 * ceil32(return_data.size)) + 1134 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        if ext_call.return_data[44 len 20] != msg.sender:
            revert with 0, 'Invalid Caller'
        if ext_call.return_data[0] > 2:
            revert with 0, 33
        if ext_call.return_data[0]:
            revert with 0, 'Invalid state'
        require ext_code.size(sub_6ba1805dAddress)
        staticcall sub_6ba1805dAddress.minimumPremium() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bids[arg1].field_768 < ext_call.return_data[0]:
            revert with 0, 'amount < minimum premium'
        mem[(8 * ceil32(return_data.size)) + 676] = arg2
        mem[(8 * ceil32(return_data.size)) + 708] = bids[arg1].field_768
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x2a0637bc with:
             gas gas_remaining wei
            args arg2, bids[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x21230eba: arg2, bids[arg1].field_768
        require ext_code.size(sub_6ba1805dAddress)
        staticcall sub_6ba1805dAddress.0x2041a38 with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getOption(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        mem[(10 * ceil32(return_data.size)) + 672 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not bool((11 * ceil32(return_data.size)) + 960 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] < 3
        mem[(11 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        mem[(11 * ceil32(return_data.size)) + 704] = ext_call.return_data[32]
        mem[(11 * ceil32(return_data.size)) + 736] = ext_call.return_data[64]
        mem[(11 * ceil32(return_data.size)) + 768] = ext_call.return_data[96]
        mem[(11 * ceil32(return_data.size)) + 800] = ext_call.return_data[128]
        mem[(11 * ceil32(return_data.size)) + 832] = ext_call.return_data[160]
        mem[(11 * ceil32(return_data.size)) + 864] = ext_call.return_data[192]
        require ext_call.return_data[224] == ext_call.return_data[236 len 20]
        mem[(11 * ceil32(return_data.size)) + 896] = ext_call.return_data[224]
        require ext_call.return_data[256] < 2
        mem[(11 * ceil32(return_data.size)) + 928] = ext_call.return_data[256]
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        if ext_call.return_data[192] <= block.timestamp + (24 * 3600):
            revert with 0, 'Option not eligble for transfer'
        mem[(11 * ceil32(return_data.size)) + 964] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x13afc111 with:
                gas gas_remaining wei
               args arg2
        mem[(11 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'Option not enabled for transfer'
        if ext_call.return_data[0] != bids[arg1].field_768:
            revert with 0, 'Invalid negotiated amount'
        if ext_call.return_data[0] > 2:
            revert with 0, 33
        if ext_call.return_data[0]:
            revert with 0, 'Invalid state'
        if ext_call.return_data[44 len 20] == bids[arg1].field_8:
            revert with 0, 'Self option transfer is not allowed'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4006929a with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_6ba1805dAddress)
        call sub_6ba1805dAddress.setTransactionFee(uint256 arg1) with:
             gas gas_remaining wei
            args bids[arg1].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xbda16634 with:
             gas gas_remaining wei
            args arg2, bids[arg1].field_8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd3b3781d: ext_call.return_data[0], bids[arg1].field_1024, arg2, address(ext_call.return_data[32]), bids[arg1].field_8
        bids[arg1].field_0 = 2
        mem[(12 * ceil32(return_data.size)) + 996] = address(ext_call.return_data[32])
        mem[(12 * ceil32(return_data.size)) + 1028] = bids[arg1].field_768
        mem[(12 * ceil32(return_data.size)) + 960] = 68
        mem[(12 * ceil32(return_data.size)) + 996 len 28] = address(ext_call.return_data[32]) << 64
        mem[(12 * ceil32(return_data.size)) + 992 len 4] = unknown_0xa9059cbb(?????)
        mem[(12 * ceil32(return_data.size)) + 1060] = 32
        mem[(12 * ceil32(return_data.size)) + 1092] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(12 * ceil32(return_data.size)) + 1124 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[32]) << 64, 0, bids[arg1].field_768, 0
        mem[(12 * ceil32(return_data.size)) + 1192] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[32]) << 64, 0, bids[arg1].field_768, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[32]) << 64, 0, bids[arg1].field_768, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(12 * ceil32(return_data.size)) + 1160] = sub_6ba1805dAddress
            mem[(12 * ceil32(return_data.size)) + 1192] = bids[arg1].field_1024
            mem[(12 * ceil32(return_data.size)) + 1124] = 68
            mem[(12 * ceil32(return_data.size)) + 1156 len 4] = unknown_0xa9059cbb(?????)
            mem[(12 * ceil32(return_data.size)) + 1224] = 32
            mem[(12 * ceil32(return_data.size)) + 1256] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + 1288 len 96] = 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0
            mem[(12 * ceil32(return_data.size)) + 1356] = 0
            call tokenAddress with:
               funct Mask(32, 224, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + 1320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + 1320] == bool(mem[(12 * ceil32(return_data.size)) + 1320])
                    if not mem[(12 * ceil32(return_data.size)) + 1320]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(12 * ceil32(return_data.size)) + 1124] = return_data.size
            mem[(12 * ceil32(return_data.size)) + 1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(12 * ceil32(return_data.size)) + 1156] == bool(mem[(12 * ceil32(return_data.size)) + 1156])
                if not mem[(12 * ceil32(return_data.size)) + 1156]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1161] = sub_6ba1805dAddress
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1193] = bids[arg1].field_1024
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1125] = 68
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1157 len 4] = unknown_0xa9059cbb(?????)
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1225] = 32
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1257] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1289 len 96] = 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1357] = 0
            call tokenAddress with:
               funct Mask(32, 224, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_6ba1805dAddress, bids[arg1].field_1024, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1321 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(15 * ceil32(return_data.size)) + 1390 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1321] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1321])
                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1321]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(15 * ceil32(return_data.size)) + 1422 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    emit 0xd57cc953: arg1, arg2
}



}
