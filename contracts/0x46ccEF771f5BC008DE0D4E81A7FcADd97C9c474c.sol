contract main {




// =====================  Runtime code  =====================


const sub_080f0a37(?) = 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]

const deadline = -1

const sub_9a222a89(?) = 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd


mapping of uint8 stor0;
mapping of uint8 stor1;
uint8 stor2;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceWhitelisted() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor0[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function isAvailableToken(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0xee8c24b800000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.getTokenAddresses() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    idx = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if arg1 != mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function sub_1eac74b3(?) {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe4b616c6d523a2044657374696e6174696f6e20746f6b656e2063616e206e6f7420626520736f7572636520746f6b65,
                    mem[212 len 16]
    mem[96] = 0xee8c24b800000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
    staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.getTokenAddresses() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[64] = (32 * _9) + ceil32(return_data.size) + 128
    idx = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if arg1 != mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            idx = idx + 1
            continue 
        mem[(32 * _9) + ceil32(return_data.size) + 128] = 0xee8c24b800000000000000000000000000000000000000000000000000000000
        require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
        staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.getTokenAddresses() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _9) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _9) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _68 = mem[(32 * _9) + ceil32(return_data.size) + 128]
        require mem[(32 * _9) + ceil32(return_data.size) + 128] <= 4294967296
        require mem[(32 * _9) + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[(32 * _9) + ceil32(return_data.size) + mem[(32 * _9) + ceil32(return_data.size) + 128] + 128] <= 4294967296 and mem[(32 * _9) + ceil32(return_data.size) + 128] + (32 * mem[(32 * _9) + ceil32(return_data.size) + mem[(32 * _9) + ceil32(return_data.size) + 128] + 128]) + 32 <= return_data.size
        mem[(32 * _9) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _9) + ceil32(return_data.size) + mem[(32 * _9) + ceil32(return_data.size) + 128] + 128]
        _71 = mem[(32 * _9) + ceil32(return_data.size) + _68 + 128]
        idx = 0
        while idx < 32 * _71:
            mem[idx + (32 * _9) + (2 * ceil32(return_data.size)) + 160] = mem[idx + (32 * _9) + ceil32(return_data.size) + _68 + 160]
            idx = idx + 32
            continue 
        mem[64] = (32 * _71) + (32 * _9) + (2 * ceil32(return_data.size)) + 160
        idx = 0
        while idx < mem[(32 * _9) + (2 * ceil32(return_data.size)) + 128]:
            require idx < mem[(32 * _9) + (2 * ceil32(return_data.size)) + 128]
            if arg2 != mem[(32 * idx) + (32 * _9) + (2 * ceil32(return_data.size)) + 172 len 20]:
                idx = idx + 1
                continue 
            require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
            staticcall 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            return ext_call.return_data[0]
        return 0
    return 0
}

function trade(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6557686974656c6973746564526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c697374656420726f6c,
                    mem[222 len 6]
    if not stor2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 0
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[352 len 4] = uint32(arg3)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg3),
                        mem[356 len 4]
        if arg3:
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[350 len 2],
                            uint32(arg3),
                            mem[356 len 4]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[328 len 64] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, Mask(224, 32, arg3) >> 32
        call arg1.0xe094fcd with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[392 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[438 len 22]
            require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
            call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, 0, this.address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg2):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[492 len 64] = 0, msg.sender, 0
            call arg2.test266151307() with:
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[556 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[602 len 22]
            else:
                mem[524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[524]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 603 len 22]
        else:
            mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[360]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 439 len 22]
            require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
            call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, 0, this.address, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg2):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 493 len 64] = 0, msg.sender, 0
            call arg2.test266151307() with:
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[ceil32(return_data.size) + 557 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 603 len 22]
            else:
                mem[ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 525]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 604 len 22]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if arg3:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 351 len 10]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 329 len 64] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, Mask(224, 32, arg3) >> 32
            call arg1.0xe094fcd with:
                 gas gas_remaining wei
                args Mask(224, 32, arg3) << 224, mem[ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 439 len 22]
                require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3, 0, this.address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 493 len 64] = 0, msg.sender, 0
                call arg2.test266151307() with:
                     gas gas_remaining wei
                    args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[ceil32(return_data.size) + 557 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 603 len 22]
                else:
                    mem[ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 525]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 604 len 22]
            else:
                mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 440 len 22]
                require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3, 0, this.address, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg2):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 494 len 64] = 0, msg.sender, 0
                call arg2.test266151307() with:
                     gas gas_remaining wei
                    args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[(2 * ceil32(return_data.size)) + 558 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 604 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 526]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 605 len 22]
        else:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
            if not arg3:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 329 len 64] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, Mask(224, 32, arg3) >> 32
                mem[ceil32(return_data.size) + 421 len 4] = uint32(arg3)
                call arg1.0xe094fcd with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 224, mem[ceil32(return_data.size) + 393 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 439 len 22]
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, 0, this.address, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 493 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[ceil32(return_data.size) + 557 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 603 len 22]
                    else:
                        mem[ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 525]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 604 len 22]
                else:
                    mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, 0, this.address, -1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call arg2 with:
                       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, msg.sender), mem[(2 * ceil32(return_data.size)) + 462 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 494 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 604 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 526]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 605 len 22]
            else:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 351 len 10]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 329 len 64] = approve(address arg1, uint256 arg2), 0xaea2e71b631fa93683bcf256, 0, Mask(224, 32, arg3) >> 32
                call arg1.0xe094fcd with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 224, mem[ceil32(return_data.size) + 393 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 439 len 22]
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, 0, this.address, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 493 len 64] = 0, msg.sender, 0
                    call arg2.test266151307() with:
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[ceil32(return_data.size) + 557 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 603 len 22]
                    else:
                        mem[ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 525]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 604 len 22]
                else:
                    mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 440 len 22]
                    require ext_code.size(0xaea2e71b631fa93683bcf256a8689dfa0e094fcd)
                    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, 0, this.address, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg2):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 494 len 64] = 0, msg.sender, 0
                    call arg2.test266151307() with:
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[(2 * ceil32(return_data.size)) + 558 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 604 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 526]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 605 len 22]
    emit Trade(arg3, ext_call.return_data[0], arg1, arg2);
    stor2 = 1
    return 0
}



}
