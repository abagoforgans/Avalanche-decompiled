contract main {




// =====================  Runtime code  =====================


address tornadoTreesAddress;
address governanceAddress;
mapping of uint8 stor2;

function instances(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function tornadoTrees() {
    return tornadoTreesAddress
}

function governance() {
    return governanceAddress
}

function _fallback() payable {
    revert
}

function updateGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    governanceAddress = arg1
}

function updateInstance(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    stor2[address(arg1)] = uint8(arg2)
}

function deposit(address arg1, bytes32 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not stor2[address(arg1)]:
        revert with 0, 'The instance is not supported'
    require ext_code.size(arg1)
    call arg1.deposit(bytes32 arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tornadoTreesAddress)
    call tornadoTreesAddress.0xc6758d6b with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EncryptedNote(Array(len=arg3.length, data=arg3[all]), msg.sender);
}

function resolve(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if chainid == 1:
        require ext_code.size(0xc2e074ec69a0dfb2997ba6c7d2e1e)
        staticcall 0xc2e074ec69a0dfb2997ba6c7d2e1e.resolver(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
    else:
        require ext_code.size(0x8595bfb0d940dfedc98943fa8a907091203f25ee)
        staticcall 0x8595bfb0d940dfedc98943fa8a907091203f25ee.resolver(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).addr(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function withdraw(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, address arg5, address arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor2[address(arg1)]:
        revert with 0, 'The instance is not supported'
    mem[356 len arg2.length] = arg2[all]
    mem[arg2.length + 356] = 0
    require ext_code.size(arg1)
    call arg1.withdraw(bytes arg1, bytes32 arg2, bytes32 arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 224, arg3, arg4, arg5, address(arg6), arg7, arg8, arg2.length, arg2[all], mem[arg2.length + 356 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tornadoTreesAddress)
    call tornadoTreesAddress.registerWithdrawal(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bulkResolve(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _63 = mem[(32 * idx) + 128]
            if chainid == 1:
                require ext_code.size(0xc2e074ec69a0dfb2997ba6c7d2e1e)
                staticcall 0xc2e074ec69a0dfb2997ba6c7d2e1e.resolver(bytes32 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
            else:
                require ext_code.size(0x8595bfb0d940dfedc98943fa8a907091203f25ee)
                staticcall 0x8595bfb0d940dfedc98943fa8a907091203f25ee.resolver(bytes32 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).addr(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _63
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _67 = mem[(32 * idx) + 128]
            if chainid == 1:
                require ext_code.size(0xc2e074ec69a0dfb2997ba6c7d2e1e)
                staticcall 0xc2e074ec69a0dfb2997ba6c7d2e1e.resolver(bytes32 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
            else:
                require ext_code.size(0x8595bfb0d940dfedc98943fa8a907091203f25ee)
                staticcall 0x8595bfb0d940dfedc98943fa8a907091203f25ee.resolver(bytes32 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).addr(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _67
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function rescueTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe544f524e3a2063616e206e6f742073656e6420746f207a65726f20616464726573,
                    mem[198 len 30]
    if not arg1:
        if not arg3:
            call arg2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            if eth.balance(this.address) < arg3:
                call arg2 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                call arg2 with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TORN: trying to send 0 balance'
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if ext_call.return_data[0] < arg3:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'TORN: trying to send 0 balance'
                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if arg3 <= 0:
                    revert with 0, 'TORN: trying to send 0 balance'
                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
                    if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
}



}
