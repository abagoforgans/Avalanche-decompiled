contract main {




// =====================  Runtime code  =====================


const name = ''

const sub_09f18e45(?) = 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50


address governanceAddress;
address strategyAddress;

function governance() payable {
    return governanceAddress
}

function strategy() payable {
    return strategyAddress
}

function _fallback() payable {
    revert
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategyAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function release() payable {
    if strategyAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
    require ext_code.size(0x83952e7ab4aca74ca96217d6f8f7591bead6d64e)
    call 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e.withdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseUnlockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategyAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
    require ext_code.size(0x83952e7ab4aca74ca96217d6f8f7591bead6d64e)
    call 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e.increase_unlock_time(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if strategyAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!governance'
    mem[96 len arg3.length] = arg3[all]
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if not bool(ext_call.success) % 32:
        return memory
          from 96
           len bool(ext_call.success) + 96
    mem[floor32(bool(ext_call.success)) + 192] = Mask(-(8 * -(bool(ext_call.success) % 32) + 32) + 256, 0, mem[floor32(bool(ext_call.success)) + 192])
    return memory
      from 96
       len floor32(bool(ext_call.success)) + 128
}

function increaseAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategyAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
    if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6, 0, 0
    call 0xc38f41a296a4493ff429f1238e030924a1542e50.0xead6d64e with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6, 0, 0) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        if arg1:
            require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
            staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[318 len 10]
        if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[296 len 64] = 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32
        call 0xc38f41a296a4493ff429f1238e030924a1542e50.0xead6d64e with:
             gas gas_remaining wei
            args arg1, Mask(224, 32, 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32) >> 32, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
        if arg1:
            require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
            staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 319 len 10]
        if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 297 len 64] = 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32
        call 0xc38f41a296a4493ff429f1238e030924a1542e50.0xead6d64e with:
             gas gas_remaining wei
            args arg1, Mask(224, 32, 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 407 len 22]
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 408 len 22]
    require ext_code.size(0x83952e7ab4aca74ca96217d6f8f7591bead6d64e)
    call 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e.increase_amount(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createLock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if strategyAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
    if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6, 0, 0
    call 0xc38f41a296a4493ff429f1238e030924a1542e50.0xead6d64e with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6, 0, 0) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        if arg1:
            require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
            staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[318 len 10]
        if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[296 len 64] = 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32
        call 0xc38f41a296a4493ff429f1238e030924a1542e50.0xead6d64e with:
             gas gas_remaining wei
            args arg1, Mask(224, 32, 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32) >> 32, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
        if arg1:
            require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
            staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 319 len 10]
        if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 297 len 64] = 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32
        call 0xc38f41a296a4493ff429f1238e030924a1542e50.0xead6d64e with:
             gas gas_remaining wei
            args arg1, Mask(224, 32, 0, 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e, Mask(224, 32, arg1) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x83952e7ab4aca74ca96217d6:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 407 len 22]
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 408 len 22]
    require ext_code.size(0x83952e7ab4aca74ca96217d6f8f7591bead6d64e)
    call 0x83952e7ab4aca74ca96217d6f8f7591bead6d64e.create_lock(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
