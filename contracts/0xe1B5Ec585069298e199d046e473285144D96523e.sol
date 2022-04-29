contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 deadline;
mapping of struct tokenGrants;
uint32 stor3;
address owner;
uint256 stor3;

function deadline() payable {
    return deadline
}

function owner() payable {
    return address(owner)
}

function tokenGrants(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenGrants[arg1].field_0
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getTokenGrant(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= deadline:
        return 0
    return tokenGrants[address(arg1)].field_0
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Claim::changeOwner: not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6c436c61696d3a3a6368616e67654f776e65723a206e6f742076616c696420616464726573,
                    mem[201 len 27]
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6c436c61696d3a3a6368616e67654f776e65723a206e6f742076616c696420616464726573,
                    mem[201 len 27]
    if tokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6c436c61696d3a3a6368616e67654f776e65723a206e6f742076616c696420616464726573,
                    mem[201 len 27]
    address(owner) = arg1
    emit ChangedOwner(address(owner), arg1);
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Claim::recoverERC20: not owner'
    if block.timestamp < deadline:
        revert with 0, 'Claim::recoverERC20: too early'
    if arg2 <= 0:
        revert with 0, 'Claim::recoverERC20: amount is 0'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Recovered(address(arg1), arg2);
}

function addTokenGrant(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp >= deadline:
        revert with 0, 'Claim::addTokenGrant: too late'
    if address(owner) != msg.sender:
        revert with 0, 'Claim::addTokenGrant: not owner'
    if arg2 <= 0:
        revert with 0, 'Claim::addTokenGrant: zero grant'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor3):
            revert with 0, 
                        32,
                        42,
                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
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
                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg2 + tokenGrants[address(arg1)].field_0 < tokenGrants[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    tokenGrants[address(arg1)].field_0 += arg2
    emit Added(arg1, arg2);
}

function claim() payable {
    if block.timestamp >= deadline:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77436c61696d3a3a636c61696d3a20617661696c61626c65546f436c61696d20697320,
                    mem[199 len 29]
    if tokenGrants[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77436c61696d3a3a636c61696d3a20617661696c61626c65546f436c61696d20697320,
                    mem[199 len 29]
    tokenGrants[msg.sender].field_0 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, tokenGrants[address(msg.sender)].field_32
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args tokenGrants[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, tokenGrants[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Claimed(msg.sender, tokenGrants[address(msg.sender)].field_0);
}

function addTokenGrants(address[] arg1, uint256[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if block.timestamp >= deadline:
        revert with 0, 'Claim::addTokenGrants: too late'
    if address(owner) != msg.sender:
        revert with 0, 'Claim::addTokenGrants: not owner'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64436c61696d3a3a616464546f6b656e4772616e74733a20646966666572656e74206c656e677468,
                    mem[204 len 24]
    mem[132] = address(owner)
    mem[164] = this.address
    mem[196] = arg3
    mem[96] = 100
    mem[132 len 28] = Mask(224, 0, stor3)
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = 292
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor3), uint32(stor3), address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor3):
            revert with 0, 
                        32,
                        42,
                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        idx = 0
        s = arg3
        while idx < arg1.length:
            require idx < arg2.length
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 31
            mem[_243 + 32] = 'SafeMath: subtraction underflow'
            if cd[((32 * idx) + arg2 + 36)] > s:
                _250 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 31
                idx = 0
                while idx < 31:
                    mem[idx + _250 + 68] = mem[idx + _243 + 32]
                    idx = idx + 32
                    continue 
                mem[_250 + 68] = mem[_250 + 69 len 31]
                revert with memory
                  from mem[64]
                   len _250 + -mem[64] + 100
            require idx < arg2.length
            require idx < arg1.length
            if cd[((32 * idx) + arg2 + 36)] + tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0 < tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg1.length
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0 += cd[((32 * idx) + arg2 + 36)]
            require idx < arg2.length
            require idx < arg1.length
            emit Added(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]);
            idx = idx + 1
            s = s - cd[((32 * idx) + arg2 + 36)]
            continue 
    else:
        mem[64] = ceil32(return_data.size) + 293
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 0
            s = arg3
            while idx < arg1.length:
                require idx < arg2.length
                _245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_245] = 31
                mem[_245 + 32] = 'SafeMath: subtraction underflow'
                if cd[((32 * idx) + arg2 + 36)] > s:
                    _253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    idx = 0
                    while idx < 31:
                        mem[idx + _253 + 68] = mem[idx + _245 + 32]
                        idx = idx + 32
                        continue 
                    mem[_253 + 68] = mem[_253 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _253 + -mem[64] + 100
                require idx < arg2.length
                require idx < arg1.length
                if cd[((32 * idx) + arg2 + 36)] + tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0 < tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg1.length
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0 += cd[((32 * idx) + arg2 + 36)]
                require idx < arg2.length
                require idx < arg1.length
                emit Added(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]);
                idx = idx + 1
                s = s - cd[((32 * idx) + arg2 + 36)]
                continue 
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            idx = 0
            s = arg3
            while idx < arg1.length:
                require idx < arg2.length
                _246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_246] = 31
                mem[_246 + 32] = 'SafeMath: subtraction underflow'
                if cd[((32 * idx) + arg2 + 36)] > s:
                    _256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    idx = 0
                    while idx < 31:
                        mem[idx + _256 + 68] = mem[idx + _246 + 32]
                        idx = idx + 32
                        continue 
                    mem[_256 + 68] = mem[_256 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _256 + -mem[64] + 100
                require idx < arg2.length
                require idx < arg1.length
                if cd[((32 * idx) + arg2 + 36)] + tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0 < tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < arg1.length
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 2
                tokenGrants[address(cd[((32 * idx) + arg1 + 36)])].field_0 += cd[((32 * idx) + arg2 + 36)]
                require idx < arg2.length
                require idx < arg1.length
                emit Added(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]);
                idx = idx + 1
                s = s - cd[((32 * idx) + arg2 + 36)]
                continue 
    if s:
        revert with 0, 32, 35, 0x73436c61696d3a3a616464546f6b656e4772616e74733a2077726f6e67206f75747075, mem[mem[64] + 103 len 29]
}



}
