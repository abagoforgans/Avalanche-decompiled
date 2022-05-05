contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint8 stor2;

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function _fallback() payable {
    require not calldata.size
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function emergencyStop() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function transfer2(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor2:
        revert with 0, 'Pausable: paused'
    if arg2 > msg.value:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg4 > msg.value - arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    call arg3 with:
       value arg4 wei
         gas gas_remaining wei
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function multiTransferEqual_L1R(address[] arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    require arg1.length
    require arg2 <= msg.value / arg1.length
    idx = 0
    while arg1.length > uint8(idx):
        require uint8(idx) < arg1.length
        call address(cd[((32 * uint8(idx)) + arg1 + 36)]) with:
           value arg2 wei
             gas gas_remaining wei
        if return_data.size:
            _10 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_10] = return_data.size
            mem[_10 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}

function multiTransfer_OST(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    idx = 0
    s = msg.value
    while arg1.length > uint8(idx):
        require uint8(idx) < arg2.length
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = 30
        mem[_17 + 32] = 'SafeMath: subtraction overflow'
        if cd[((32 * uint8(idx)) + arg2 + 36)] > s:
            _18 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _18 + 68] = mem[idx + _17 + 32]
                idx = idx + 32
                continue 
            mem[_18 + 68] = mem[_18 + 70 len 30]
            revert with memory
              from mem[64]
               len _18 + -mem[64] + 100
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call address(cd[((32 * uint8(idx)) + arg1 + 36)]) with:
           value cd[((32 * uint8(idx)) + arg2 + 36)] wei
             gas gas_remaining wei
        if return_data.size:
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_26] = return_data.size
            mem[_26 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = s - cd[((32 * uint8(idx)) + arg2 + 36)]
        continue 
    return 1
}

function escapeHatch(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit EscapeHatchCalled(address(arg1), eth.balance(this.address));
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit EscapeHatchCalled(address(arg1), ext_call.return_data[0]);
    stor1 = 1
}

function multiTransferTokenEqual_71p(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    if not arg3:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
        mem[416 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args 0, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            idx = 0
            while arg2.length > uint8(idx):
                require uint8(idx) < arg2.length
                mem[296] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[328] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                mem[292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            idx = 0
            while arg2.length > uint8(idx):
                require uint8(idx) < arg2.length
                mem[ceil32(return_data.size) + 297] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[ceil32(return_data.size) + 329] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
    else:
        if arg2.length * arg3 / arg3 != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2.length * arg3) >> 32
        mem[416 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2.length * arg3) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2.length * arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            idx = 0
            while arg2.length > uint8(idx):
                require uint8(idx) < arg2.length
                mem[296] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[328] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                mem[292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            idx = 0
            while arg2.length > uint8(idx):
                require uint8(idx) < arg2.length
                mem[ceil32(return_data.size) + 297] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[ceil32(return_data.size) + 329] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                continue 
}

function multiTransferToken_a4A(address arg1, address[] arg2, uint256[] arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg4
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = 292
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        idx = 0
        s = arg4
        while arg2.length > uint8(idx):
            require uint8(idx) < arg3.length
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = 30
            mem[_191 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * uint8(idx)) + arg3 + 36)] > s:
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _198 + 68] = mem[idx + _191 + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 68] = mem[_198 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            require uint8(idx) < arg2.length
            require uint8(idx) < arg3.length
            mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[mem[64] + 36] = cd[((32 * uint8(idx)) + arg3 + 36)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s - cd[((32 * uint8(idx)) + arg3 + 36)]
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
            s = arg4
            while arg2.length > uint8(idx):
                require uint8(idx) < arg3.length
                _193 = mem[64]
                mem[64] = mem[64] + 64
                mem[_193] = 30
                mem[_193 + 32] = 'SafeMath: subtraction overflow'
                if cd[((32 * uint8(idx)) + arg3 + 36)] > s:
                    _201 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _201 + 68] = mem[idx + _193 + 32]
                        idx = idx + 32
                        continue 
                    mem[_201 + 68] = mem[_201 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _201 + -mem[64] + 100
                require uint8(idx) < arg2.length
                require uint8(idx) < arg3.length
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[mem[64] + 36] = cd[((32 * uint8(idx)) + arg3 + 36)]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s - cd[((32 * uint8(idx)) + arg3 + 36)]
                continue 
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            idx = 0
            s = arg4
            while arg2.length > uint8(idx):
                require uint8(idx) < arg3.length
                _194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_194] = 30
                mem[_194 + 32] = 'SafeMath: subtraction overflow'
                if cd[((32 * uint8(idx)) + arg3 + 36)] > s:
                    _204 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _204 + 68] = mem[idx + _194 + 32]
                        idx = idx + 32
                        continue 
                    mem[_204 + 68] = mem[_204 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _204 + -mem[64] + 100
                require uint8(idx) < arg2.length
                require uint8(idx) < arg3.length
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[mem[64] + 36] = cd[((32 * uint8(idx)) + arg3 + 36)]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s - cd[((32 * uint8(idx)) + arg3 + 36)]
                continue 
}

function multiTransferTokenAvaxEqual(address arg1, address[] arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    require arg2.length
    require arg4 <= msg.value / arg2.length
    if not arg3:
        mem[64] = 292
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
        mem[416 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args 0, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            idx = 0
            while arg2.length > uint8(idx):
                require uint8(idx) < arg2.length
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < arg2.length
                call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                   value arg4 wei
                     gas gas_remaining wei
                if return_data.size:
                    _322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_322] = return_data.size
                    mem[_322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[64] = ceil32(return_data.size) + 293
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while arg2.length > uint8(idx):
                    require uint8(idx) < arg2.length
                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg2.length
                    call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                       value arg4 wei
                         gas gas_remaining wei
                    if return_data.size:
                        _323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_323] = return_data.size
                        mem[_323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                idx = 0
                while arg2.length > uint8(idx):
                    require uint8(idx) < arg2.length
                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg2.length
                    call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                       value arg4 wei
                         gas gas_remaining wei
                    if return_data.size:
                        _324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_324] = return_data.size
                        mem[_324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        if arg2.length * arg3 / arg3 != arg2.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[64] = 292
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2.length * arg3) >> 32
        mem[416 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2.length * arg3) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2.length * arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            idx = 0
            while arg2.length > uint8(idx):
                require uint8(idx) < arg2.length
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < arg2.length
                call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                   value arg4 wei
                     gas gas_remaining wei
                if return_data.size:
                    _318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_318] = return_data.size
                    mem[_318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[64] = ceil32(return_data.size) + 293
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while arg2.length > uint8(idx):
                    require uint8(idx) < arg2.length
                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg2.length
                    call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                       value arg4 wei
                         gas gas_remaining wei
                    if return_data.size:
                        _319 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_319] = return_data.size
                        mem[_319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                idx = 0
                while arg2.length > uint8(idx):
                    require uint8(idx) < arg2.length
                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), arg3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg2.length
                    call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                       value arg4 wei
                         gas gas_remaining wei
                    if return_data.size:
                        _320 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_320] = return_data.size
                        mem[_320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
}

function multiTransferTokenAvax(address arg1, address[] arg2, uint256[] arg3, uint256 arg4, uint256[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg4
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = 292
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        idx = 0
        s = msg.value
        t = arg4
        while arg2.length > uint8(idx):
            require uint8(idx) < arg3.length
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 30
            mem[_271 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * uint8(idx)) + arg3 + 36)] > t:
                _278 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _278 + 68] = mem[idx + _271 + 32]
                    idx = idx + 32
                    continue 
                mem[_278 + 68] = mem[_278 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _278 + -mem[64] + 100
            require uint8(idx) < arg5.length
            _304 = mem[64]
            mem[64] = mem[64] + 64
            mem[_304] = 30
            mem[_304 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * uint8(idx)) + arg5 + 36)] > s:
                _310 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _310 + 68] = mem[idx + _304 + 32]
                    idx = idx + 32
                    continue 
                mem[_310 + 68] = mem[_310 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _310 + -mem[64] + 100
            require uint8(idx) < arg2.length
            require uint8(idx) < arg3.length
            mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[mem[64] + 36] = cd[((32 * uint8(idx)) + arg3 + 36)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < arg2.length
            require uint8(idx) < arg5.length
            call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
               value cd[((32 * uint8(idx)) + arg5 + 36)] wei
                 gas gas_remaining wei
            if return_data.size:
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_352] = return_data.size
                mem[_352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = s - cd[((32 * uint8(idx)) + arg5 + 36)]
            t = t - cd[((32 * uint8(idx)) + arg3 + 36)]
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
            s = msg.value
            t = arg4
            while arg2.length > uint8(idx):
                require uint8(idx) < arg3.length
                _273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_273] = 30
                mem[_273 + 32] = 'SafeMath: subtraction overflow'
                if cd[((32 * uint8(idx)) + arg3 + 36)] > t:
                    _281 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _281 + 68] = mem[idx + _273 + 32]
                        idx = idx + 32
                        continue 
                    mem[_281 + 68] = mem[_281 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _281 + -mem[64] + 100
                require uint8(idx) < arg5.length
                _305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_305] = 30
                mem[_305 + 32] = 'SafeMath: subtraction overflow'
                if cd[((32 * uint8(idx)) + arg5 + 36)] > s:
                    _313 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _313 + 68] = mem[idx + _305 + 32]
                        idx = idx + 32
                        continue 
                    mem[_313 + 68] = mem[_313 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _313 + -mem[64] + 100
                require uint8(idx) < arg2.length
                require uint8(idx) < arg3.length
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[mem[64] + 36] = cd[((32 * uint8(idx)) + arg3 + 36)]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < arg2.length
                require uint8(idx) < arg5.length
                call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                   value cd[((32 * uint8(idx)) + arg5 + 36)] wei
                     gas gas_remaining wei
                if return_data.size:
                    _353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_353] = return_data.size
                    mem[_353 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - cd[((32 * uint8(idx)) + arg5 + 36)]
                t = t - cd[((32 * uint8(idx)) + arg3 + 36)]
                continue 
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            idx = 0
            s = msg.value
            t = arg4
            while arg2.length > uint8(idx):
                require uint8(idx) < arg3.length
                _274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_274] = 30
                mem[_274 + 32] = 'SafeMath: subtraction overflow'
                if cd[((32 * uint8(idx)) + arg3 + 36)] > t:
                    _284 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _284 + 68] = mem[idx + _274 + 32]
                        idx = idx + 32
                        continue 
                    mem[_284 + 68] = mem[_284 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _284 + -mem[64] + 100
                require uint8(idx) < arg5.length
                _306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_306] = 30
                mem[_306 + 32] = 'SafeMath: subtraction overflow'
                if cd[((32 * uint8(idx)) + arg5 + 36)] > s:
                    _316 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _316 + 68] = mem[idx + _306 + 32]
                        idx = idx + 32
                        continue 
                    mem[_316 + 68] = mem[_316 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _316 + -mem[64] + 100
                require uint8(idx) < arg2.length
                require uint8(idx) < arg3.length
                mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                mem[mem[64] + 36] = cd[((32 * uint8(idx)) + arg3 + 36)]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < arg2.length
                require uint8(idx) < arg5.length
                call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
                   value cd[((32 * uint8(idx)) + arg5 + 36)] wei
                     gas gas_remaining wei
                if return_data.size:
                    _354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_354] = return_data.size
                    mem[_354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - cd[((32 * uint8(idx)) + arg5 + 36)]
                t = t - cd[((32 * uint8(idx)) + arg3 + 36)]
                continue 
}



}
