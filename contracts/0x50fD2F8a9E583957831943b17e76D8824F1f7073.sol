contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f656ac53Address;
address sub_439d7319Address;
address MIMAddress;
uint32 stor4;
address sub_bffe0ed3Address;
uint256 endOfSale;
uint256 saleStartTimestamp;
uint256 stor7; offset 32
uint256 sub_8601ec68;
big736 stor7;
uint256 stor8; offset 32
uint256 sub_a025a975;
big736 stor8;
uint256 stor9; offset 32
uint256 sub_b9b3f671;
big480 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;

function saleStartTimestamp() payable {
    return saleStartTimestamp
}

function sub_439d7319(?) payable {
    return sub_439d7319Address
}

function endOfSale() payable {
    return endOfSale
}

function sub_8601ec68(?) payable {
    return sub_8601ec68
}

function owner() payable {
    return owner
}

function sub_a025a975(?) payable {
    return sub_a025a975
}

function sub_b9b3f671(?) payable {
    return sub_b9b3f671
}

function sub_bffe0ed3(?) payable {
    return address(sub_bffe0ed3Address)
}

function MIM() payable {
    return MIMAddress
}

function sub_f656ac53(?) payable {
    return sub_f656ac53Address
}

function sub_f8418c1c(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function _fallback() payable {
    revert
}

function saleStarted() payable {
    if not saleStartTimestamp:
        return 0
    return (block.timestamp > saleStartTimestamp)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
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

function whiteListBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 288
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if saleStartTimestamp:
        if block.timestamp > saleStartTimestamp:
            revert with 0, 'Already initialized'
    sub_f656ac53Address = arg3
    sub_439d7319Address = arg2
    MIMAddress = arg4
    if arg5 + arg9 < arg5:
        revert with 0, 'SafeMath: addition overflow'
    endOfSale = arg5 + arg9
    saleStartTimestamp = arg9
    sub_8601ec68 = arg6
    sub_a025a975 = arg7
    address(sub_bffe0ed3Address) = arg1
    sub_b9b3f671 = arg8
    return 1
}

function sub_3b4ae867(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not saleStartTimestamp:
        revert with 0, 'Not started'
    if block.timestamp > saleStartTimestamp != 1:
        revert with 0, 'Not started'
    if block.timestamp < endOfSale:
        revert with 0, 'Not ended'
    require ext_code.size(sub_f656ac53Address)
    staticcall sub_f656ac53Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f656ac53Address)
    call sub_f656ac53Address.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_c87780c2(?) payable {
    if not saleStartTimestamp:
        revert with 0, 'Not started'
    if block.timestamp > saleStartTimestamp != 1:
        revert with 0, 'Not started'
    if bool(stor11[address(msg.sender)]) != 1:
        revert with 0, 'Not whitelisted'
    if stor10[address(msg.sender)]:
        revert with 0, 'Already participated'
    if block.timestamp >= endOfSale:
        revert with 0, 'Sale over'
    stor10[address(msg.sender)] = 1
    if ext_code.size(MIMAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), Mask(224, 0, stor8.field_32)
    mem[416 len 4] = 0
    call MIMAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(736, 0, stor8.field_0), mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), sub_a025a975
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if ext_code.size(sub_f656ac53Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor9.field_32)
        call sub_f656ac53Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, stor9.field_0), mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), sub_a025a975
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        return 1
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
    if ext_code.size(sub_f656ac53Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor9.field_32)
    mem[ceil32(return_data.size) + 549 len 4] = 0
    call sub_f656ac53Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, stor9.field_0), mem[ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), sub_a025a975
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 567 len 22]
        return 1
    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 489]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    return 1, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function sub_c896e3b5(?) payable {
    if not saleStartTimestamp:
        revert with 0, 'Not started'
    if block.timestamp > saleStartTimestamp != 1:
        revert with 0, 'Not started'
    if bool(stor11[address(msg.sender)]) != 1:
        revert with 0, 'Not whitelisted'
    if stor10[address(msg.sender)]:
        revert with 0, 'Already participated'
    if block.timestamp >= endOfSale:
        revert with 0, 'Sale over'
    stor10[address(msg.sender)] = 1
    if ext_code.size(sub_439d7319Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), Mask(224, 0, stor7.field_32)
    mem[416 len 4] = 0
    call sub_439d7319Address with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(736, 0, stor7.field_0), mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), sub_8601ec68
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if ext_code.size(sub_f656ac53Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor9.field_32)
        call sub_f656ac53Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, stor9.field_0), mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), sub_8601ec68
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        return 1
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
    if ext_code.size(sub_f656ac53Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor9.field_32)
    mem[ceil32(return_data.size) + 549 len 4] = 0
    call sub_f656ac53Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, stor9.field_0), mem[ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_bffe0ed3Address), sub_8601ec68
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 567 len 22]
        return 1
    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 489]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    return 1, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
