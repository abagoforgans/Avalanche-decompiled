contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, bytes32 arg2, bytes arg3)
#
address tornadoTreesAddress;
address governanceAddress;
mapping of struct instances;

function instances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require instances[arg1].field_168 < 3
    return bool(instances[arg1].field_0), instances[arg1].field_0, instances[arg1].field_168
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

function setTornadoTreesContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    tornadoTreesAddress = arg1
    emit 0xd5ef7567: arg1
}

function sub_e7d460bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    governanceAddress = address(arg1)
    emit NewGovernance(governanceAddress);
}

function backupNotes(bytes[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 64 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 64] = 0
        emit EncryptedNote(Array(len=cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]), msg.sender);
        idx = idx + 1
        continue 
}

function withdraw(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, address arg5, address arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require instances[address(arg1)].field_168 <= 2
    require instances[address(arg1)].field_168 <= 2
    if not instances[address(arg1)].field_168:
        revert with 0, 'The instance is not supported'
    require ext_code.size(arg1)
    call arg1.withdraw(bytes arg1, bytes32 arg2, bytes32 arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), arg3, arg4, address(arg5), address(arg6), arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require instances[address(arg1)].field_168 <= 2
    if instances[address(arg1)].field_168 == 2:
        require ext_code.size(tornadoTreesAddress)
        call tornadoTreesAddress.registerWithdrawal(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function rescueTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TORN: can not send to zero address'
    if not arg1:
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
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg3:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TORN: trying to send 0 balance'
            mem[ceil32(return_data.size) + 132] = arg2
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
        else:
            if arg3 <= 0:
                revert with 0, 'TORN: trying to send 0 balance'
            mem[ceil32(return_data.size) + 132] = arg2
            mem[ceil32(return_data.size) + 164] = arg3
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
            mem[ceil32(return_data.size) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function updateInstance(address arg1, bool arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require calldata.size - 36 >= 96
    require arg2 == arg2
    mem[160] = arg2
    require arg3 == arg3
    mem[192] = arg3
    require arg4 < 3
    mem[224] = arg4
    mem[128] = 160
    instances[address(arg1)].field_0 = uint8(arg2)
    instances[address(arg1)].field_8 = arg3
    require arg4 <= 2
    instances[address(arg1)].field_168 = Mask(88, 0, arg4)
    if arg2:
        require ext_code.size(arg1)
        staticcall arg1.0xfc0c546a with:
                gas gas_remaining wei
        mem[256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != arg3:
            revert with 0, 'Incorrect token'
        mem[ceil32(return_data.size) + 260] = this.address
        mem[ceil32(return_data.size) + 292] = arg1
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require arg4 <= 2
        if not arg4:
            require arg4 <= 2
            if not arg4:
                if ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 292] = arg1
                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                    mem[(2 * ceil32(return_data.size)) + 256] = 68
                    mem[(2 * ceil32(return_data.size)) + 292 len 28] = address(arg1) << 64
                    mem[(2 * ceil32(return_data.size)) + 288 len 4] = approve(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 356] = 32
                    mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 420 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0
                    mem[(2 * ceil32(return_data.size)) + 488] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1 > 0:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        require arg1 <= 0
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                            if not mem[(2 * ceil32(return_data.size)) + 452]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if ext_call.return_data[0]:
                require arg4 <= 2
                if not arg4:
                    if ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + 292] = arg1
                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                        mem[(2 * ceil32(return_data.size)) + 256] = 68
                        mem[(2 * ceil32(return_data.size)) + 292 len 28] = address(arg1) << 64
                        mem[(2 * ceil32(return_data.size)) + 288 len 4] = approve(address arg1, uint256 arg2)
                        mem[(2 * ceil32(return_data.size)) + 356] = 32
                        mem[(2 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(address(ext_call.return_data[0])) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 420 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0
                        mem[(2 * ceil32(return_data.size)) + 488] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if arg1 > 0:
                                    revert with memory
                                      from 128
                                       len arg1
                                revert with 0, 'SafeERC20: low-level call failed'
                            require arg1 <= 0
                        else:
                            mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 452] == bool(mem[(2 * ceil32(return_data.size)) + 452])
                                if not mem[(2 * ceil32(return_data.size)) + 452]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 260] = this.address
                mem[(2 * ceil32(return_data.size)) + 292] = arg1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg1
                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(4 * ceil32(return_data.size)) + 292] = arg1
                mem[(4 * ceil32(return_data.size)) + 324] = -1
                mem[(4 * ceil32(return_data.size)) + 256] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 28] = address(arg1) << 64
                mem[(4 * ceil32(return_data.size)) + 288 len 4] = approve(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + 356] = 32
                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 420 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
                mem[(4 * ceil32(return_data.size)) + 488] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1 > 0:
                            revert with memory
                              from 128
                               len arg1
                        revert with 0, 'SafeERC20: low-level call failed'
                    require arg1 <= 0
                else:
                    mem[(4 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 452] == bool(mem[(4 * ceil32(return_data.size)) + 452])
                        if not mem[(4 * ceil32(return_data.size)) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require arg4 < 3
    emit 0x2826f62d: arg4, arg1
}



}
