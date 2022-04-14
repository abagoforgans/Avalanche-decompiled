contract main {




// =====================  Runtime code  =====================


#
#  - getAmountBToZapIn(address arg1, uint256 arg2, address arg3, uint8 arg4)
#  - zapOut(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6)
#  - withdrawTokenAmount(address arg1, address arg2, uint256 arg3)
#  - zapInToken(address arg1, uint256[] arg2, address arg3, uint8 arg4, address arg5, bool arg6)
#  - migrate(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, uint256 arg11)
#  - zapIn(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, address arg5, bool arg6)
#  - zapOutToPair(address arg1, uint256 arg2, address arg3)
#  - migrateWithPermit(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12, uint8 arg13, bytes32 arg14, bytes32 arg15)
#  - zapOutWithPermit(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint256 arg8, uint8 arg9, bytes32 arg10, bytes32 arg11)
#  - zapOutToPairWithPermit(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8)
#
address governanceAddress;
address WBNBAddress;
address fireBirdRouterAddress;
address fireBirdFactoryAddress;
address fireBirdFormulaAddress;
mapping of uint8 stor6;

function fireBirdFormula() {
    return fireBirdFormulaAddress
}

function whitelistUniRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function governance() {
    return governanceAddress
}

function fireBirdRouter() {
    return fireBirdRouterAddress
}

function fireBirdFactory() {
    return fireBirdFactoryAddress
}

function WBNB() {
    return WBNBAddress
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'Zap: !governance'
    governanceAddress = arg1
    emit LogGovernance(arg1);
}

function setWhitelistUniRouter(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governanceAddress != msg.sender:
        revert with 0, 'Zap: !governance'
    stor6[address(arg1)] = uint8(arg2)
}

function withdrawToken(address[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 == arg2
    if governanceAddress != msg.sender:
        revert with 0, 'Zap: !governance'
    if not arg2:
        revert with 0, 'Zap: !receiver'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _232 = mem[(32 * idx) + 128]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + 140 len 20]:
            _234 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            s = 0
            while s < mem[_234]:
                s = s + 32
                continue 
            if ceil32(mem[_234]) <= mem[_234]:
                call arg2 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_234] + _234 + -mem[64] + 28]
                if return_data.size:
                    _348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_348] = return_data.size
                    mem[_348 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[_234] + _234 + 32] = 0
                call arg2 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_234] + _234 + -mem[64] + 28]
                if return_data.size:
                    _349 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_349] = return_data.size
                    mem[_349 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
            mem[mem[64]] = eth.balance(this.address)
            mem[mem[64] + 32] = arg2
            emit Withdraw(eth.balance(this.address), arg2, address(_232));
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_232))
            staticcall address(_232).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _240 = mem[_238]
            _241 = mem[64]
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 68] = _240
            _246 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_246 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_246 + 36 len 28]
            mem[64] = _241 + 164
            mem[_241 + 100] = 32
            mem[_241 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_232)):
                revert with 0, 'Address: call to non-contract'
            _269 = mem[_246]
            s = 0
            while s < _269:
                mem[s + _241 + 164] = mem[s + _246 + 32]
                s = s + 32
                continue 
            if ceil32(_269) > _269:
                mem[_269 + _241 + 164] = 0
            call address(_232).mem[_241 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_241 + 168 len _269 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_241 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_241 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _241 + 232] = mem[idx + _241 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_241 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_241 + 164] = _240
                mem[_241 + 196] = arg2
            else:
                mem[64] = _241 + ceil32(return_data.size) + 165
                mem[_241 + 164] = return_data.size
                mem[_241 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_241 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_241 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _241 + ceil32(return_data.size) + 233] = mem[idx + _241 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_241 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_241 + 196] == bool(mem[_241 + 196])
                    if not mem[_241 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_241 + ceil32(return_data.size) + 165] = _240
                mem[_241 + ceil32(return_data.size) + 197] = arg2
            emit Withdraw(_240, arg2, address(_232));
        idx = idx + 1
        continue 
}

function manualApproveAllowance(address[] arg1, address[] arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if governanceAddress != msg.sender:
        revert with 0, 'Zap: !governance'
    idx = 0
    while idx < arg1.length:
        s = 0
        while s < arg2.length:
            require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
            require idx < arg1.length
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not arg3:
                _268 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * s) + arg2 + 36)])
                mem[mem[64] + 68] = arg3
                _270 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_270 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_270 + 36 len 28]
                mem[64] = _268 + 164
                mem[_268 + 100] = 32
                mem[_268 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                    revert with 0, 'Address: call to non-contract'
                _281 = mem[_270]
                t = 0
                while t < _281:
                    mem[t + _268 + 164] = mem[t + _270 + 32]
                    t = t + 32
                    continue 
                if ceil32(_281) > _281:
                    mem[_281 + _268 + 164] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[_268 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_268 + 168 len _281 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_268 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_268 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _268 + 232] = mem[idx + _268 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_268 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _268 + ceil32(return_data.size) + 165
                    mem[_268 + 164] = return_data.size
                    mem[_268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_268 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_268 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _268 + ceil32(return_data.size) + 233] = mem[idx + _268 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_268 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_268 + 196] == bool(mem[_268 + 196])
                        if not mem[_268 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[((32 * s) + arg2 + 36)])
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[((32 * s) + arg2 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_273]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _277 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * s) + arg2 + 36)])
                mem[mem[64] + 68] = arg3
                _282 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_282 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_282 + 36 len 28]
                mem[64] = _277 + 164
                mem[_277 + 100] = 32
                mem[_277 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                    revert with 0, 'Address: call to non-contract'
                _296 = mem[_282]
                t = 0
                while t < _296:
                    mem[t + _277 + 164] = mem[t + _282 + 32]
                    t = t + 32
                    continue 
                if ceil32(_296) > _296:
                    mem[_296 + _277 + 164] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[_277 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_277 + 168 len _296 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_277 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_277 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _277 + 232] = mem[idx + _277 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_277 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _277 + ceil32(return_data.size) + 165
                    mem[_277 + 164] = return_data.size
                    mem[_277 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_277 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_277 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _277 + ceil32(return_data.size) + 233] = mem[idx + _277 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_277 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_277 + 196] == bool(mem[_277 + 196])
                        if not mem[_277 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function getAmountToZapOut(address arg1, uint256 arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_call.return_data[0]
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            require ext_call.return_data[0]
            require ext_code.size(fireBirdFormulaAddress)
            staticcall fireBirdFormulaAddress.0xeb22d54f with:
                    gas gas_remaining wei
                   args fireBirdFactoryAddress, address(arg1), address(ext_call.return_data[0]), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if 0 / ext_call.return_data[0] > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] > ext_call.return_data[64]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(fireBirdFormulaAddress)
            staticcall fireBirdFormulaAddress.0x671a11b5 with:
                    gas gas_remaining wei
                   args 0 / ext_call.return_data[0], ext_call.return_data[32] - (0 / ext_call.return_data[0]), ext_call.return_data[64] - (0 / ext_call.return_data[0]), ext_call.return_data[96] << 224, ext_call.return_data[128] << 224, uint32(ext_call.return_data[160])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return 0 / ext_call.return_data[0], ext_call.return_data[0], 0 / ext_call.return_data[0]
        if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_call.return_data[0]
        require ext_code.size(fireBirdFormulaAddress)
        staticcall fireBirdFormulaAddress.0xeb22d54f with:
                gas gas_remaining wei
               args fireBirdFactoryAddress, address(arg1), address(ext_call.return_data[0]), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        if 0 / ext_call.return_data[0] > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] * arg2 / ext_call.return_data[0] > ext_call.return_data[64]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(fireBirdFormulaAddress)
        staticcall fireBirdFormulaAddress.0x671a11b5 with:
                gas gas_remaining wei
               args 0 / ext_call.return_data[0], ext_call.return_data[32] - (0 / ext_call.return_data[0]), ext_call.return_data[64] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]), ext_call.return_data[96] << 224, ext_call.return_data[128] << 224, uint32(ext_call.return_data[160])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0 / ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * arg2 / ext_call.return_data[0]
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_call.return_data[0]
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_call.return_data[0]
        require ext_code.size(fireBirdFormulaAddress)
        staticcall fireBirdFormulaAddress.0xeb22d54f with:
                gas gas_remaining wei
               args fireBirdFactoryAddress, address(arg1), address(ext_call.return_data[0]), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        if ext_call.return_data[0] * arg2 / ext_call.return_data[0] > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / ext_call.return_data[0] > ext_call.return_data[64]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(fireBirdFormulaAddress)
        staticcall fireBirdFormulaAddress.0x671a11b5 with:
                gas gas_remaining wei
               args ext_call.return_data[0] * arg2 / ext_call.return_data[0], ext_call.return_data[32] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]), ext_call.return_data[64] - (0 / ext_call.return_data[0]), ext_call.return_data[96] << 224, ext_call.return_data[128] << 224, uint32(ext_call.return_data[160])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0] * arg2 / ext_call.return_data[0], ext_call.return_data[0], 0 / ext_call.return_data[0]
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_call.return_data[0]
    require ext_code.size(fireBirdFormulaAddress)
    staticcall fireBirdFormulaAddress.0xeb22d54f with:
            gas gas_remaining wei
           args fireBirdFactoryAddress, address(arg1), address(ext_call.return_data[0]), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[0] * arg2 / ext_call.return_data[0] > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] * arg2 / ext_call.return_data[0] > ext_call.return_data[64]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(fireBirdFormulaAddress)
    staticcall fireBirdFormulaAddress.0x671a11b5 with:
            gas gas_remaining wei
           args ext_call.return_data[0] * arg2 / ext_call.return_data[0], ext_call.return_data[32] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]), ext_call.return_data[64] - (ext_call.return_data[0] * arg2 / ext_call.return_data[0]), ext_call.return_data[96] << 224, ext_call.return_data[128] << 224, uint32(ext_call.return_data[160])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] * arg2 / ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0] * arg2 / ext_call.return_data[0]
}



}
