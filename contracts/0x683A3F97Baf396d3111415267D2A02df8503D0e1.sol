contract main {




// =====================  Runtime code  =====================


address controllerAddress;
uint256 stor1;
mapping of address managerIssuanceHook;

function managerIssuanceHook(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return managerIssuanceHook[arg1]
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function removeModule() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The BasicIssuanceModule module cannot be removed'
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.manager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the SetToken manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be controller-enabled SetToken'
    require ext_code.size(arg1)
    staticcall arg1.isPendingModule(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be pending initialization'
    managerIssuanceHook[address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.initializeModule() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getRequiredComponentUnitsForIssue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be a valid and initialized SetToken'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be a valid and initialized SetToken'
    mem[(2 * ceil32(return_data.size)) + 96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getComponents() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _16 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = _17
    require return_data.size >= _16 + (32 * _17) + 32
    s = (2 * ceil32(return_data.size)) + _16 + 128
    t = (4 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _17:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require _17 <= test266151307()
    _118 = mem[64]
    mem[mem[64]] = _17
    mem[64] = mem[64] + (32 * _17) + 32
    if not _17:
        idx = 0
        while idx < _17:
            require idx < mem[(4 * ceil32(return_data.size)) + 96]
            _218 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_218)
            require ext_code.size(arg1)
            staticcall arg1.getExternalPositionModules(address rg1) with:
                    gas gas_remaining wei
                   args address(_218)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _231 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _234 = mem[_231]
            require mem[_231] <= test266151307()
            require _231 + mem[_231] + 31 < _231 + return_data.size
            _239 = mem[_231 + mem[_231]]
            require mem[_231 + mem[_231]] <= test266151307()
            require (32 * mem[_231 + mem[_231]]) + 32 >= 0 and _231 + ceil32(return_data.size) + (32 * mem[_231 + mem[_231]]) + 32 <= test266151307()
            mem[64] = _231 + ceil32(return_data.size) + (32 * mem[_231 + mem[_231]]) + 32
            mem[_231 + ceil32(return_data.size)] = _239
            require return_data.size >= _234 + (32 * _239) + 32
            t = _231 + _234 + 32
            u = _231 + ceil32(return_data.size) + 32
            s = 0
            while s < _239:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _239 > 0:
                revert with 0, 'Only default positions are supported'
            require idx < mem[(4 * ceil32(return_data.size)) + 96]
            _322 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getDefaultPositionRealUnit(address rg1) with:
                    gas gas_remaining wei
                   args address(_322)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _333 = mem[_331]
            if mem[_331] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if not mem[_331]:
                require idx < mem[_118]
                mem[(32 * idx) + _118 + 32] = 0
            else:
                if not arg2:
                    require idx < mem[_118]
                    mem[(32 * idx) + _118 + 32] = 0
                else:
                    if not mem[_331]:
                        _345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_345] = 30
                        mem[_345 + 32] = 'SafeMath: subtraction overflow'
                        _351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _351 + 68] = mem[idx + _345 + 32]
                            idx = idx + 32
                            continue 
                        mem[_351 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _351 + -mem[64] + 100
                    if arg2 * mem[_331] / mem[_331] != arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_347] = 30
                    mem[_347 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > arg2 * _333:
                        _353 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _353 + 68] = mem[idx + _347 + 32]
                            idx = idx + 32
                            continue 
                        mem[_353 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _353 + -mem[64] + 100
                    _359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_359] = 26
                    mem[_359 + 32] = 'SafeMath: division by zero'
                    if ((arg2 * _333) - 1 / 10^18) + 1 < (arg2 * _333) - 1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[_118]
                    mem[(32 * idx) + _118 + 32] = ((arg2 * _333) - 1 / 10^18) + 1
            idx = idx + 1
            continue 
        _217 = mem[64]
        mem[mem[64]] = 64
        _221 = mem[(4 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 64] = mem[(4 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = mem[64] + 96
        while idx < _221:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_217 + 32] = (32 * _221) + 96
        _307 = mem[_118]
        mem[_217 + (32 * _221) + 96] = mem[_118]
        mem[_217 + (32 * _221) + 128 len 32 * _307] = mem[_118 + 32 len 32 * _307]
        return memory
          from mem[64]
           len _217 + (32 * _221) + (32 * _307) + -mem[64] + 128
    mem[_118 + 32 len 32 * _17] = call.data[calldata.size len 32 * _17]
    idx = 0
    while idx < _17:
        require idx < mem[(4 * ceil32(return_data.size)) + 96]
        _220 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_220)
        require ext_code.size(arg1)
        staticcall arg1.getExternalPositionModules(address rg1) with:
                gas gas_remaining wei
               args address(_220)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _236 = mem[_232]
        require mem[_232] <= test266151307()
        require _232 + mem[_232] + 31 < _232 + return_data.size
        _240 = mem[_232 + mem[_232]]
        require mem[_232 + mem[_232]] <= test266151307()
        require (32 * mem[_232 + mem[_232]]) + 32 >= 0 and _232 + ceil32(return_data.size) + (32 * mem[_232 + mem[_232]]) + 32 <= test266151307()
        mem[64] = _232 + ceil32(return_data.size) + (32 * mem[_232 + mem[_232]]) + 32
        mem[_232 + ceil32(return_data.size)] = _240
        require return_data.size >= _236 + (32 * _240) + 32
        t = _232 + _236 + 32
        u = _232 + ceil32(return_data.size) + 32
        s = 0
        while s < _240:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _240 > 0:
            revert with 0, 'Only default positions are supported'
        require idx < mem[(4 * ceil32(return_data.size)) + 96]
        _325 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.getDefaultPositionRealUnit(address rg1) with:
                gas gas_remaining wei
               args address(_325)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _334 = mem[_332]
        if mem[_332] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if not mem[_332]:
            require idx < mem[_118]
            mem[(32 * idx) + _118 + 32] = 0
        else:
            if not arg2:
                require idx < mem[_118]
                mem[(32 * idx) + _118 + 32] = 0
            else:
                if not mem[_332]:
                    _346 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_346] = 30
                    mem[_346 + 32] = 'SafeMath: subtraction overflow'
                    _352 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _352 + 68] = mem[idx + _346 + 32]
                        idx = idx + 32
                        continue 
                    mem[_352 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _352 + -mem[64] + 100
                if arg2 * mem[_332] / mem[_332] != arg2:
                    revert with 0, 'SafeMath: multiplication overflow'
                _349 = mem[64]
                mem[64] = mem[64] + 64
                mem[_349] = 30
                mem[_349 + 32] = 'SafeMath: subtraction overflow'
                if 1 > arg2 * _334:
                    _354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _354 + 68] = mem[idx + _349 + 32]
                        idx = idx + 32
                        continue 
                    mem[_354 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _354 + -mem[64] + 100
                _360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_360] = 26
                mem[_360 + 32] = 'SafeMath: division by zero'
                if ((arg2 * _334) - 1 / 10^18) + 1 < (arg2 * _334) - 1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[_118]
                mem[(32 * idx) + _118 + 32] = ((arg2 * _334) - 1 / 10^18) + 1
        idx = idx + 1
        continue 
    _219 = mem[64]
    mem[mem[64]] = 64
    _223 = mem[(4 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 64] = mem[(4 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = mem[64] + 96
    while idx < _223:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_219 + 32] = (32 * _223) + 96
    _309 = mem[_118]
    mem[_219 + (32 * _223) + 96] = mem[_118]
    mem[_219 + (32 * _223) + 128 len 32 * _309] = mem[_118 + 32 len 32 * _309]
    return memory
      from mem[64]
       len _219 + (32 * _223) + (32 * _309) + -mem[64] + 128
}

function redeem(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be a valid and initialized SetToken'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be a valid and initialized SetToken'
    if arg2 <= 0:
        revert with 0, 'Redeem quantity must be > 0'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(arg1)
    call arg1.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getComponents() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _22 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = _23
    require return_data.size >= _22 + (32 * _23) + 32
    s = (2 * ceil32(return_data.size)) + _22 + 128
    t = (4 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _23:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < _23:
        require idx < mem[(4 * ceil32(return_data.size)) + 96]
        _244 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_244)
        require ext_code.size(arg1)
        staticcall arg1.getExternalPositionModules(address rg1) with:
                gas gas_remaining wei
               args address(_244)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _248 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _249 = mem[_248]
        require mem[_248] <= test266151307()
        require _248 + mem[_248] + 31 < _248 + return_data.size
        _250 = mem[_248 + mem[_248]]
        require mem[_248 + mem[_248]] <= test266151307()
        require (32 * mem[_248 + mem[_248]]) + 32 >= 0 and _248 + ceil32(return_data.size) + (32 * mem[_248 + mem[_248]]) + 32 <= test266151307()
        mem[64] = _248 + ceil32(return_data.size) + (32 * mem[_248 + mem[_248]]) + 32
        mem[_248 + ceil32(return_data.size)] = _250
        require return_data.size >= _249 + (32 * _250) + 32
        t = _248 + _249 + 32
        u = _248 + ceil32(return_data.size) + 32
        s = 0
        while s < _250:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _250 > 0:
            revert with 0, 'Only default positions are supported'
        mem[mem[64] + 4] = address(_244)
        require ext_code.size(arg1)
        staticcall arg1.getDefaultPositionRealUnit(address rg1) with:
                gas gas_remaining wei
               args address(_244)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_354]
        if mem[_354] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if not arg2:
            _359 = mem[64]
            mem[64] = mem[64] + 64
            mem[_359] = 26
            mem[_359 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            continue 
        if mem[_354] * arg2 / arg2 != mem[_354]:
            revert with 0, 'SafeMath: multiplication overflow'
        _360 = mem[64]
        mem[64] = mem[64] + 64
        mem[_360] = 26
        mem[_360 + 32] = 'SafeMath: division by zero'
        if not _355 * arg2 / 10^18:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_244))
        staticcall address(_244).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _364 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _365 = mem[_364]
        if not _355 * arg2 / 10^18:
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_244))
            staticcall address(_244).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _374 = mem[_373]
            _376 = mem[64]
            mem[64] = mem[64] + 64
            mem[_376] = 30
            mem[_376 + 32] = 'SafeMath: subtraction overflow'
            if _355 * arg2 / 10^18 <= _365:
                if _374 != _365 - (_355 * arg2 / 10^18):
                    revert with 0, 'Invalid post transfer balance'
                idx = idx + 1
                continue 
            _377 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _377 + 68] = mem[idx + _376 + 32]
                idx = idx + 32
                continue 
            mem[_377 + 98] = 0
            revert with memory
              from mem[64]
               len _377 + -mem[64] + 100
        _366 = mem[64]
        mem[mem[64] + 36] = arg3
        mem[mem[64] + 68] = _355 * arg2 / 10^18
        _368 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_368 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_368 + 36 len 28]
        mem[_366 + 100] = 0x8f6f033200000000000000000000000000000000000000000000000000000000
        mem[_366 + 104] = address(_244)
        mem[_366 + 136] = 0
        mem[_366 + 168] = 96
        _372 = mem[_368]
        mem[_366 + 200] = mem[_368]
        s = 0
        while s < _372:
            mem[s + _366 + 232] = mem[s + _368 + 32]
            s = s + 32
            continue 
        if ceil32(_372) <= _372:
            require ext_code.size(arg1)
            call arg1.invoke(address rg1, uint256 rg2, bytes rg3) with:
                 gas gas_remaining wei
                args address(_244), 0, 96, mem[_366 + 200 len ceil32(_372) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_366 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _366 + ceil32(return_data.size) + 100
            require return_data.size >= 32
            _452 = mem[_366 + 100 len 4], address(_244) << 64
            require mem[_366 + 100 len 4], address(_244) << 64 <= test266151307()
            require _366 + mem[_366 + 100 len 4], address(_244) << 64 + 131 < _366 + return_data.size + 100
            _454 = mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]
            require mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100] <= test266151307()
            require ceil32(mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]) + 32 >= 0 and _366 + ceil32(return_data.size) + ceil32(mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]) + 132 <= test266151307()
            mem[64] = _366 + ceil32(return_data.size) + ceil32(mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]) + 132
            mem[_366 + ceil32(return_data.size) + 100] = _454
            require _452 + _454 + 32 <= return_data.size
            s = 0
            while s < _454:
                mem[s + _366 + ceil32(return_data.size) + 132] = mem[s + _366 + _452 + 132]
                s = s + 32
                continue 
            if ceil32(_454) <= _454:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_244))
                staticcall address(_244).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _522 = mem[_518]
                _526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_526] = 30
                mem[_526 + 32] = 'SafeMath: subtraction overflow'
                if _355 * arg2 / 10^18 <= _365:
                    if _522 != _365 - (_355 * arg2 / 10^18):
                        revert with 0, 'Invalid post transfer balance'
                    idx = idx + 1
                    continue 
                _530 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _530 + 68] = mem[idx + _526 + 32]
                    idx = idx + 32
                    continue 
                mem[_530 + 98] = 0
                revert with memory
                  from mem[64]
                   len _530 + -mem[64] + 100
            mem[_454 + _366 + ceil32(return_data.size) + 132] = 0
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_244))
            staticcall address(_244).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _523 = mem[_519]
            _527 = mem[64]
            mem[64] = mem[64] + 64
            mem[_527] = 30
            mem[_527 + 32] = 'SafeMath: subtraction overflow'
            if _355 * arg2 / 10^18 <= _365:
                if _523 != _365 - (_355 * arg2 / 10^18):
                    revert with 0, 'Invalid post transfer balance'
                idx = idx + 1
                continue 
            _531 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _531 + 68] = mem[idx + _527 + 32]
                idx = idx + 32
                continue 
            mem[_531 + 98] = 0
            revert with memory
              from mem[64]
               len _531 + -mem[64] + 100
        mem[_372 + _366 + 232] = 0
        require ext_code.size(arg1)
        call arg1.invoke(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining wei
            args address(_244), 0, 96, mem[_366 + 200 len ceil32(_372) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_366 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _366 + ceil32(return_data.size) + 100
        require return_data.size >= 32
        _453 = mem[_366 + 100 len 4], address(_244) << 64
        require mem[_366 + 100 len 4], address(_244) << 64 <= test266151307()
        require _366 + mem[_366 + 100 len 4], address(_244) << 64 + 131 < _366 + return_data.size + 100
        _455 = mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]
        require mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100] <= test266151307()
        require ceil32(mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]) + 32 >= 0 and _366 + ceil32(return_data.size) + ceil32(mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]) + 132 <= test266151307()
        mem[64] = _366 + ceil32(return_data.size) + ceil32(mem[_366 + mem[_366 + 100 len 4], address(_244) << 64 + 100]) + 132
        mem[_366 + ceil32(return_data.size) + 100] = _455
        require _453 + _455 + 32 <= return_data.size
        s = 0
        while s < _455:
            mem[s + _366 + ceil32(return_data.size) + 132] = mem[s + _366 + _453 + 132]
            s = s + 32
            continue 
        if ceil32(_455) <= _455:
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_244))
            staticcall address(_244).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _520 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _524 = mem[_520]
            _528 = mem[64]
            mem[64] = mem[64] + 64
            mem[_528] = 30
            mem[_528 + 32] = 'SafeMath: subtraction overflow'
            if _355 * arg2 / 10^18 <= _365:
                if _524 != _365 - (_355 * arg2 / 10^18):
                    revert with 0, 'Invalid post transfer balance'
                idx = idx + 1
                continue 
            _532 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _532 + 68] = mem[idx + _528 + 32]
                idx = idx + 32
                continue 
            mem[_532 + 98] = 0
            revert with memory
              from mem[64]
               len _532 + -mem[64] + 100
        mem[_455 + _366 + ceil32(return_data.size) + 132] = 0
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_244))
        staticcall address(_244).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _521 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _525 = mem[_521]
        _529 = mem[64]
        mem[64] = mem[64] + 64
        mem[_529] = 30
        mem[_529 + 32] = 'SafeMath: subtraction overflow'
        if _355 * arg2 / 10^18 <= _365:
            if _525 != _365 - (_355 * arg2 / 10^18):
                revert with 0, 'Invalid post transfer balance'
            idx = idx + 1
            continue 
        _533 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _533 + 68] = mem[idx + _529 + 32]
            idx = idx + 32
            continue 
        mem[_533 + 98] = 0
        revert with memory
          from mem[64]
           len _533 + -mem[64] + 100
    emit SetTokenRedeemed(arg2, arg1, msg.sender, arg3);
    stor1 = 1
}

function issue(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be a valid and initialized SetToken'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Must be a valid and initialized SetToken'
    if arg2 <= 0:
        revert with 0, 'Issue quantity must be > 0'
    mem[0] = arg1
    mem[32] = 2
    if not managerIssuanceHook[address(arg1)]:
        mem[(2 * ceil32(return_data.size)) + 100] = arg1
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x74ebe3ec with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Must be a valid and initialized SetToken'
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.isInitializedModule(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Must be a valid and initialized SetToken'
        mem[(6 * ceil32(return_data.size)) + 96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getComponents() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _46 = mem[(6 * ceil32(return_data.size)) + 96]
        require mem[(6 * ceil32(return_data.size)) + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _50 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = _50
        require return_data.size >= _46 + (32 * _50) + 32
        s = (6 * ceil32(return_data.size)) + _46 + 128
        t = (7 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _50:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require _50 <= test266151307()
        _782 = mem[64]
        mem[mem[64]] = _50
        mem[64] = mem[64] + (32 * _50) + 32
        if not _50:
            idx = 0
            while idx < _50:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1508 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1508)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address rg1) with:
                        gas gas_remaining wei
                       args address(_1508)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1548 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1557 = mem[_1548]
                require mem[_1548] <= test266151307()
                require _1548 + mem[_1548] + 31 < _1548 + return_data.size
                _1569 = mem[_1548 + mem[_1548]]
                require mem[_1548 + mem[_1548]] <= test266151307()
                require (32 * mem[_1548 + mem[_1548]]) + 32 >= 0 and _1548 + ceil32(return_data.size) + (32 * mem[_1548 + mem[_1548]]) + 32 <= test266151307()
                mem[64] = _1548 + ceil32(return_data.size) + (32 * mem[_1548 + mem[_1548]]) + 32
                mem[_1548 + ceil32(return_data.size)] = _1569
                require return_data.size >= _1557 + (32 * _1569) + 32
                t = _1548 + _1557 + 32
                u = _1548 + ceil32(return_data.size) + 32
                s = 0
                while s < _1569:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1569 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2265 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address rg1) with:
                        gas gas_remaining wei
                       args address(_2265)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2293 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2301 = mem[_2293]
                if mem[_2293] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2293]:
                    require idx < mem[_782]
                    mem[(32 * idx) + _782 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_782]
                        mem[(32 * idx) + _782 + 32] = 0
                    else:
                        if not mem[_2293]:
                            _2364 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2364] = 30
                            mem[_2364 + 32] = 'SafeMath: subtraction overflow'
                            _2378 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2378 + 68] = mem[idx + _2364 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2378 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2378 + -mem[64] + 100
                        if arg2 * mem[_2293] / mem[_2293] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2368 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2368] = 30
                        mem[_2368 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _2301:
                            _2390 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2390 + 68] = mem[idx + _2368 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2390 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2390 + -mem[64] + 100
                        _2412 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2412] = 26
                        mem[_2412 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _2301) - 1 / 10^18) + 1 < (arg2 * _2301) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_782]
                        mem[(32 * idx) + _782 + 32] = ((arg2 * _2301) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2216 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2216:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2228 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_782]
                _2245 = mem[(32 * idx) + _782 + 32]
                if mem[(32 * idx) + _782 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2228))
                    staticcall address(_2228).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2300 = mem[_2292]
                    _2308 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2245
                    _2316 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2316 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2316 + 36 len 28]
                    mem[64] = _2308 + 196
                    mem[_2308 + 132] = 32
                    mem[_2308 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2228)):
                        revert with 0, 'Address: call to non-contract'
                    _2340 = mem[_2316]
                    s = 0
                    while s < _2340:
                        mem[s + _2308 + 196] = mem[s + _2316 + 32]
                        _2216 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2340) > _2340:
                        mem[_2340 + _2308 + 196] = 0
                    call address(_2228).mem[_2308 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2308 + 200 len _2340 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2308 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2308 + 200] = 32
                            mem[_2308 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2308 + 264] = mem[idx + _2308 + 164]
                                _2216 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2308 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2308 + 200] = arg1
                        require ext_code.size(address(_2228))
                        staticcall address(_2228).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2308 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2308 + ceil32(return_data.size) + 196
                    else:
                        mem[_2308 + 196] = return_data.size
                        mem[_2308 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2308 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2308 + ceil32(return_data.size) + 201] = 32
                            mem[_2308 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2308 + ceil32(return_data.size) + 265] = mem[idx + _2308 + 164]
                                _2216 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2308 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2308 + 228] == bool(mem[_2308 + 228])
                            if not mem[_2308 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2308 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2228))
                        staticcall address(_2228).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2308 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2308 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2245 + _2300 < _2300:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2245 + _2300:
                        revert with 0, 'Invalid post transfer balance'
                _2216 = mem[(7 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        else:
            mem[_782 + 32 len 32 * _50] = call.data[calldata.size len 32 * _50]
            idx = 0
            while idx < _50:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1509 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1509)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address rg1) with:
                        gas gas_remaining wei
                       args address(_1509)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1549 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1559 = mem[_1549]
                require mem[_1549] <= test266151307()
                require _1549 + mem[_1549] + 31 < _1549 + return_data.size
                _1571 = mem[_1549 + mem[_1549]]
                require mem[_1549 + mem[_1549]] <= test266151307()
                require (32 * mem[_1549 + mem[_1549]]) + 32 >= 0 and _1549 + ceil32(return_data.size) + (32 * mem[_1549 + mem[_1549]]) + 32 <= test266151307()
                mem[64] = _1549 + ceil32(return_data.size) + (32 * mem[_1549 + mem[_1549]]) + 32
                mem[_1549 + ceil32(return_data.size)] = _1571
                require return_data.size >= _1559 + (32 * _1571) + 32
                t = _1549 + _1559 + 32
                u = _1549 + ceil32(return_data.size) + 32
                s = 0
                while s < _1571:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1571 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2268 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address rg1) with:
                        gas gas_remaining wei
                       args address(_2268)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2303 = mem[_2295]
                if mem[_2295] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2295]:
                    require idx < mem[_782]
                    mem[(32 * idx) + _782 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_782]
                        mem[(32 * idx) + _782 + 32] = 0
                    else:
                        if not mem[_2295]:
                            _2365 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2365] = 30
                            mem[_2365 + 32] = 'SafeMath: subtraction overflow'
                            _2381 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2381 + 68] = mem[idx + _2365 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2381 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2381 + -mem[64] + 100
                        if arg2 * mem[_2295] / mem[_2295] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2370] = 30
                        mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _2303:
                            _2393 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2393 + 68] = mem[idx + _2370 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2393 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2393 + -mem[64] + 100
                        _2417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2417] = 26
                        mem[_2417 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _2303) - 1 / 10^18) + 1 < (arg2 * _2303) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_782]
                        mem[(32 * idx) + _782 + 32] = ((arg2 * _2303) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2217 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2217:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2232 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_782]
                _2247 = mem[(32 * idx) + _782 + 32]
                if mem[(32 * idx) + _782 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2232))
                    staticcall address(_2232).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2302 = mem[_2294]
                    _2309 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2247
                    _2319 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2319 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2319 + 36 len 28]
                    mem[64] = _2309 + 196
                    mem[_2309 + 132] = 32
                    mem[_2309 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2232)):
                        revert with 0, 'Address: call to non-contract'
                    _2342 = mem[_2319]
                    s = 0
                    while s < _2342:
                        mem[s + _2309 + 196] = mem[s + _2319 + 32]
                        _2217 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2342) > _2342:
                        mem[_2342 + _2309 + 196] = 0
                    call address(_2232).mem[_2309 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2309 + 200 len _2342 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2309 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2309 + 200] = 32
                            mem[_2309 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2309 + 264] = mem[idx + _2309 + 164]
                                _2217 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2309 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2309 + 200] = arg1
                        require ext_code.size(address(_2232))
                        staticcall address(_2232).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2309 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2309 + ceil32(return_data.size) + 196
                    else:
                        mem[_2309 + 196] = return_data.size
                        mem[_2309 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2309 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2309 + ceil32(return_data.size) + 201] = 32
                            mem[_2309 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2309 + ceil32(return_data.size) + 265] = mem[idx + _2309 + 164]
                                _2217 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2309 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2309 + 228] == bool(mem[_2309 + 228])
                            if not mem[_2309 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2309 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2232))
                        staticcall address(_2232).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2309 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2309 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2247 + _2302 < _2302:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2247 + _2302:
                        revert with 0, 'Invalid post transfer balance'
                _2217 = mem[(7 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        require ext_code.size(arg1)
        call arg1.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit SetTokenIssued(0, arg2, arg1, msg.sender, arg3);
    else:
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        require ext_code.size(managerIssuanceHook[address(arg1)])
        call managerIssuanceHook[address(arg1)].invokePreIssueHook(address rg1, uint256 rg2, address rg3, address rg4) with:
             gas gas_remaining wei
            args address(arg1), arg2, msg.sender, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = arg1
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x74ebe3ec with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Must be a valid and initialized SetToken'
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.isInitializedModule(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Must be a valid and initialized SetToken'
        mem[(6 * ceil32(return_data.size)) + 96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getComponents() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _53 = mem[(6 * ceil32(return_data.size)) + 96]
        require mem[(6 * ceil32(return_data.size)) + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _54 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = _54
        require return_data.size >= _53 + (32 * _54) + 32
        s = (6 * ceil32(return_data.size)) + _53 + 128
        t = (7 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _54:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require _54 <= test266151307()
        _783 = mem[64]
        mem[mem[64]] = _54
        mem[64] = mem[64] + (32 * _54) + 32
        if not _54:
            idx = 0
            while idx < _54:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1510 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1510)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address rg1) with:
                        gas gas_remaining wei
                       args address(_1510)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1550 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1561 = mem[_1550]
                require mem[_1550] <= test266151307()
                require _1550 + mem[_1550] + 31 < _1550 + return_data.size
                _1573 = mem[_1550 + mem[_1550]]
                require mem[_1550 + mem[_1550]] <= test266151307()
                require (32 * mem[_1550 + mem[_1550]]) + 32 >= 0 and _1550 + ceil32(return_data.size) + (32 * mem[_1550 + mem[_1550]]) + 32 <= test266151307()
                mem[64] = _1550 + ceil32(return_data.size) + (32 * mem[_1550 + mem[_1550]]) + 32
                mem[_1550 + ceil32(return_data.size)] = _1573
                require return_data.size >= _1561 + (32 * _1573) + 32
                t = _1550 + _1561 + 32
                u = _1550 + ceil32(return_data.size) + 32
                s = 0
                while s < _1573:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1573 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2271 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address rg1) with:
                        gas gas_remaining wei
                       args address(_2271)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2305 = mem[_2297]
                if mem[_2297] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2297]:
                    require idx < mem[_783]
                    mem[(32 * idx) + _783 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_783]
                        mem[(32 * idx) + _783 + 32] = 0
                    else:
                        if not mem[_2297]:
                            _2366 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2366] = 30
                            mem[_2366 + 32] = 'SafeMath: subtraction overflow'
                            _2384 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2384 + 68] = mem[idx + _2366 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2384 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2384 + -mem[64] + 100
                        if arg2 * mem[_2297] / mem[_2297] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2372] = 30
                        mem[_2372 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _2305:
                            _2396 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2396 + 68] = mem[idx + _2372 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2396 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2396 + -mem[64] + 100
                        _2422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2422] = 26
                        mem[_2422 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _2305) - 1 / 10^18) + 1 < (arg2 * _2305) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_783]
                        mem[(32 * idx) + _783 + 32] = ((arg2 * _2305) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2218 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2218:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2236 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_783]
                _2249 = mem[(32 * idx) + _783 + 32]
                if mem[(32 * idx) + _783 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2236))
                    staticcall address(_2236).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2296 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2304 = mem[_2296]
                    _2310 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2249
                    _2322 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2322 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2322 + 36 len 28]
                    mem[64] = _2310 + 196
                    mem[_2310 + 132] = 32
                    mem[_2310 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2236)):
                        revert with 0, 'Address: call to non-contract'
                    _2344 = mem[_2322]
                    s = 0
                    while s < _2344:
                        mem[s + _2310 + 196] = mem[s + _2322 + 32]
                        _2218 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2344) > _2344:
                        mem[_2344 + _2310 + 196] = 0
                    call address(_2236).mem[_2310 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2310 + 200 len _2344 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2310 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2310 + 200] = 32
                            mem[_2310 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2310 + 264] = mem[idx + _2310 + 164]
                                _2218 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2310 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2310 + 200] = arg1
                        require ext_code.size(address(_2236))
                        staticcall address(_2236).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2310 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2310 + ceil32(return_data.size) + 196
                    else:
                        mem[_2310 + 196] = return_data.size
                        mem[_2310 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2310 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2310 + ceil32(return_data.size) + 201] = 32
                            mem[_2310 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2310 + ceil32(return_data.size) + 265] = mem[idx + _2310 + 164]
                                _2218 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2310 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2310 + 228] == bool(mem[_2310 + 228])
                            if not mem[_2310 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2310 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2236))
                        staticcall address(_2236).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2310 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2310 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2249 + _2304 < _2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2249 + _2304:
                        revert with 0, 'Invalid post transfer balance'
                _2218 = mem[(7 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        else:
            mem[_783 + 32 len 32 * _54] = call.data[calldata.size len 32 * _54]
            idx = 0
            while idx < _54:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1511 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1511)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address rg1) with:
                        gas gas_remaining wei
                       args address(_1511)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1551 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1563 = mem[_1551]
                require mem[_1551] <= test266151307()
                require _1551 + mem[_1551] + 31 < _1551 + return_data.size
                _1575 = mem[_1551 + mem[_1551]]
                require mem[_1551 + mem[_1551]] <= test266151307()
                require (32 * mem[_1551 + mem[_1551]]) + 32 >= 0 and _1551 + ceil32(return_data.size) + (32 * mem[_1551 + mem[_1551]]) + 32 <= test266151307()
                mem[64] = _1551 + ceil32(return_data.size) + (32 * mem[_1551 + mem[_1551]]) + 32
                mem[_1551 + ceil32(return_data.size)] = _1575
                require return_data.size >= _1563 + (32 * _1575) + 32
                t = _1551 + _1563 + 32
                u = _1551 + ceil32(return_data.size) + 32
                s = 0
                while s < _1575:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1575 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2274 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address rg1) with:
                        gas gas_remaining wei
                       args address(_2274)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2299 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2307 = mem[_2299]
                if mem[_2299] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2299]:
                    require idx < mem[_783]
                    mem[(32 * idx) + _783 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_783]
                        mem[(32 * idx) + _783 + 32] = 0
                    else:
                        if not mem[_2299]:
                            _2367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2367] = 30
                            mem[_2367 + 32] = 'SafeMath: subtraction overflow'
                            _2387 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2387 + 68] = mem[idx + _2367 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2387 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2387 + -mem[64] + 100
                        if arg2 * mem[_2299] / mem[_2299] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2374 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2374] = 30
                        mem[_2374 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _2307:
                            _2399 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2399 + 68] = mem[idx + _2374 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2399 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2399 + -mem[64] + 100
                        _2427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2427] = 26
                        mem[_2427 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _2307) - 1 / 10^18) + 1 < (arg2 * _2307) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_783]
                        mem[(32 * idx) + _783 + 32] = ((arg2 * _2307) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2219 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2219:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2240 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_783]
                _2251 = mem[(32 * idx) + _783 + 32]
                if mem[(32 * idx) + _783 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2240))
                    staticcall address(_2240).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2298 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2306 = mem[_2298]
                    _2311 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2251
                    _2325 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2325 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2325 + 36 len 28]
                    mem[64] = _2311 + 196
                    mem[_2311 + 132] = 32
                    mem[_2311 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2240)):
                        revert with 0, 'Address: call to non-contract'
                    _2346 = mem[_2325]
                    s = 0
                    while s < _2346:
                        mem[s + _2311 + 196] = mem[s + _2325 + 32]
                        _2219 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2346) > _2346:
                        mem[_2346 + _2311 + 196] = 0
                    call address(_2240).mem[_2311 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2311 + 200 len _2346 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2311 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2311 + 200] = 32
                            mem[_2311 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2311 + 264] = mem[idx + _2311 + 164]
                                _2219 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2311 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2311 + 200] = arg1
                        require ext_code.size(address(_2240))
                        staticcall address(_2240).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2311 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2311 + ceil32(return_data.size) + 196
                    else:
                        mem[_2311 + 196] = return_data.size
                        mem[_2311 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2311 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2311 + ceil32(return_data.size) + 201] = 32
                            mem[_2311 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2311 + ceil32(return_data.size) + 265] = mem[idx + _2311 + 164]
                                _2219 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2311 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2311 + 228] == bool(mem[_2311 + 228])
                            if not mem[_2311 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2311 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2240))
                        staticcall address(_2240).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2311 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2311 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2251 + _2306 < _2306:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2251 + _2306:
                        revert with 0, 'Invalid post transfer balance'
                _2219 = mem[(7 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        require ext_code.size(arg1)
        call arg1.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit SetTokenIssued(managerIssuanceHook[address(arg1)], arg2, arg1, msg.sender, arg3);
    stor1 = 1
}



}
