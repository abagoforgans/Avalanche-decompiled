contract main {




// =====================  Runtime code  =====================


const sub_dc224863(?) = 0x8b8c0776df2c2176edf6f82391c35ea4891146d7a976ee36fd07f1a6fb4ead4c

const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05


uint256 stor0;
uint8 stor1;
address coreAddress; offset 8
address tokenAddress;
array of address strategies;
mapping of uint256 sub_24c71ece;
uint256 sub_1bf7940d;

function sub_1bf7940d(?) payable {
    return sub_1bf7940d
}

function strategyCount() payable {
    return strategies.length
}

function sub_24c71ece(?) payable {
    require calldata.size - 4 >= 32
    return sub_24c71ece[arg1]
}

function paused() payable {
    return bool(stor1)
}

function strategies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < strategies.length
    return strategies[arg1]
}

function core() payable {
    return coreAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_63610d85(?) payable {
    idx = 0
    while idx < strategies.length:
        mem[0] = 3
        mem[96] = 0x2fddd91300000000000000000000000000000000000000000000000000000000
        require ext_code.size(strategies[idx])
        call strategies[idx].0x2fddd913 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function setCore(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe436f72655265663a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[211 len 17]
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function pause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if stor1:
        revert with 0, 'Pausable: paused'
    stor1 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xe43581b8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.isGuardian(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x77436f72655265663a3a6f6e6c79477561726469616e4f72476f7665726e6f723a2043616c6c6572206973206e6f74206120677561726469616e206f7220676f7665726e6f,
                        mem[233 len 27]
    if not stor1:
        revert with 0, 'Pausable: not paused'
    stor1 = 0
    emit Unpaused(msg.sender);
}

function changeRatio(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x72436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    if arg1 >= strategies.length:
        revert with 0, 'invalid index'
    sub_24c71ece[stor3[arg1]] = arg2
    if sub_24c71ece[stor3[arg1]] > sub_1bf7940d:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_1bf7940d = arg2 + sub_1bf7940d - sub_24c71ece[stor3[arg1]]
    require arg1 < strategies.length
    emit 0x2366bd94: strategies[arg1], sub_24c71ece[stor3[arg1]], arg2
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x72436f72655265663a3a6f6e6c7954696d656c6f636b3a2043616c6c6572206973206e6f7420612074696d656c6f63,
                    mem[211 len 17]
    if tokenAddress == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdraw() payable {
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x91d14854 with:
            gas gas_remaining wei
           args 0x8b8c0776df2c2176edf6f82391c35ea4891146d7a976ee36fd07f1a6fb4ead4c, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CoreRef::onlyRole: Not permit'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < strategies.length:
        mem[0] = 3
        mem[96] = 0x2fddd91300000000000000000000000000000000000000000000000000000000
        require ext_code.size(strategies[idx])
        call strategies[idx].0x2fddd913 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    idx = 0
    while idx < strategies.length:
        mem[0] = 3
        mem[96] = 0x3ccfd60b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(strategies[idx])
        call strategies[idx].0x3ccfd60b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    stor0 = 1
}

function approveToken() payable {
    mem[64] = 96
    idx = 0
    while idx < strategies.length:
        mem[0] = 3
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, strategies[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[mem[64] + 122 len 10]
        _56 = mem[64]
        mem[mem[64] + 36] = strategies[idx]
        mem[mem[64] + 68] = -1
        _57 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_57 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_57 + 36 len 28]
        mem[64] = _56 + 164
        mem[_56 + 100] = 32
        mem[_56 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_56 + 270 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        _65 = mem[_57]
        t = _57 + 32
        u = _56 + 164
        s = mem[_57]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_56 + floor32(mem[_57]) + 164] = mem[_57 + -(mem[_57] % 32) + floor32(mem[_57]) + 64 len mem[_57] % 32] or Mask(8 * -(mem[_57] % 32) + 32, -(8 * -(mem[_57] % 32) + 32) + 256, mem[_56 + floor32(mem[_57]) + 164])
        call tokenAddress.mem[_56 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_56 + 168 len _65 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_56 + 274 len 22]
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[_56 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_56 + 168] = 32
            mem[_56 + 200] = 32
            idx = 0
            while idx < 32:
                mem[idx + _56 + 232] = mem[idx + _56 + 132]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _56 + -mem[64] + 264
        mem[64] = _56 + ceil32(return_data.size) + 165
        mem[_56 + 164] = return_data.size
        mem[_56 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_56 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_56 + ceil32(return_data.size) + 275 len 22]
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_56 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_56 + ceil32(return_data.size) + 169] = 32
        idx = 0
        while idx < 32:
            mem[idx + _56 + ceil32(return_data.size) + 233] = mem[idx + _56 + 132]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_56 + ceil32(return_data.size) + 233]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'deposit must be greater than 0'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        idx = 0
        while idx < strategies.length:
            mem[0] = 3
            mem[292] = 0x2fddd91300000000000000000000000000000000000000000000000000000000
            require ext_code.size(strategies[idx])
            call strategies[idx].0x2fddd913 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        idx = 0
        while idx < strategies.length:
            mem[32] = 4
            if not arg1:
                if sub_1bf7940d <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_1bf7940d
                require idx < strategies.length
                mem[0] = 3
                mem[292] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                mem[296] = 0 / sub_1bf7940d
                require ext_code.size(strategies[idx])
                call strategies[idx].0xb6b55f25 with:
                     gas gas_remaining wei
                    args (0 / sub_1bf7940d)
            else:
                if sub_24c71ece[stor3[idx]] * arg1 / arg1 != sub_24c71ece[stor3[idx]]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if sub_1bf7940d <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_1bf7940d
                require idx < strategies.length
                mem[0] = 3
                mem[292] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                mem[296] = sub_24c71ece[stor3[idx]] * arg1 / sub_1bf7940d
                require ext_code.size(strategies[idx])
                call strategies[idx].0xb6b55f25 with:
                     gas gas_remaining wei
                    args (sub_24c71ece[stor3[idx]] * arg1 / sub_1bf7940d)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6b5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        idx = 0
        while idx < strategies.length:
            mem[0] = 3
            mem[ceil32(return_data.size) + 293] = 0x2fddd91300000000000000000000000000000000000000000000000000000000
            require ext_code.size(strategies[idx])
            call strategies[idx].0x2fddd913 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        idx = 0
        while idx < strategies.length:
            mem[32] = 4
            if not arg1:
                if sub_1bf7940d <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_1bf7940d
                require idx < strategies.length
                mem[0] = 3
                mem[ceil32(return_data.size) + 293] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 297] = 0 / sub_1bf7940d
                require ext_code.size(strategies[idx])
                call strategies[idx].0xb6b55f25 with:
                     gas gas_remaining wei
                    args (0 / sub_1bf7940d)
            else:
                if sub_24c71ece[stor3[idx]] * arg1 / arg1 != sub_24c71ece[stor3[idx]]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if sub_1bf7940d <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_1bf7940d
                require idx < strategies.length
                mem[0] = 3
                mem[ceil32(return_data.size) + 293] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 297] = sub_24c71ece[stor3[idx]] * arg1 / sub_1bf7940d
                require ext_code.size(strategies[idx])
                call strategies[idx].0xb6b55f25 with:
                     gas gas_remaining wei
                    args (sub_24c71ece[stor3[idx]] * arg1 / sub_1bf7940d)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    stor0 = 1
}



}
