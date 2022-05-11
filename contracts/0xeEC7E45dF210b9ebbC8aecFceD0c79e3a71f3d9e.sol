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
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the SetToken manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x774d75737420626520636f6e74726f6c6c65722d656e61626c656420536574546f6b65,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.isPendingModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                    mem[204 len 24]
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                    mem[204 len 24]
    mem[96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getComponents() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _16 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _17 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _17
    require return_data.size >= _16 + (32 * _17) + 32
    s = _16 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _17:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require _17 <= test266151307()
    _142 = mem[64]
    mem[mem[64]] = _17
    mem[64] = mem[64] + (32 * _17) + 32
    if not _17:
        idx = 0
        while idx < _17:
            require idx < mem[ceil32(return_data.size) + 96]
            _266 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_266)
            require ext_code.size(arg1)
            staticcall arg1.getExternalPositionModules(address arg1) with:
                    gas gas_remaining wei
                   args address(_266)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _280 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _285 = mem[_280]
            require mem[_280] <= test266151307()
            require _280 + mem[_280] + 31 < _280 + return_data.size
            _287 = mem[_280 + mem[_280]]
            require mem[_280 + mem[_280]] <= test266151307()
            require _280 + ceil32(return_data.size) + (32 * mem[_280 + mem[_280]]) + 32 <= test266151307() and (32 * mem[_280 + mem[_280]]) + 32 >= 0
            mem[64] = _280 + ceil32(return_data.size) + (32 * mem[_280 + mem[_280]]) + 32
            mem[_280 + ceil32(return_data.size)] = _287
            require return_data.size >= _285 + (32 * _287) + 32
            t = _280 + _285 + 32
            u = _280 + ceil32(return_data.size) + 32
            s = 0
            while s < _287:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _287 > 0:
                revert with 0, 'Only default positions are supported'
            require idx < mem[ceil32(return_data.size) + 96]
            _395 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                    gas gas_remaining wei
                   args address(_395)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _403 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _405 = mem[_403]
            if mem[_403] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if not mem[_403]:
                require idx < mem[_142]
                mem[(32 * idx) + _142 + 32] = 0
            else:
                if not arg2:
                    require idx < mem[_142]
                    mem[(32 * idx) + _142 + 32] = 0
                else:
                    if not mem[_403]:
                        _419 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_419] = 30
                        mem[_419 + 32] = 'SafeMath: subtraction overflow'
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _419 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 * mem[_403] / mem[_403] != arg2:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _421 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_421] = 30
                    mem[_421 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > arg2 * _405:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _421 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    _451 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_451] = 26
                    mem[_451 + 32] = 'SafeMath: division by zero'
                    if ((arg2 * _405) - 1 / 10^18) + 1 < (arg2 * _405) - 1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[_142]
                    mem[(32 * idx) + _142 + 32] = ((arg2 * _405) - 1 / 10^18) + 1
            idx = idx + 1
            continue 
        _265 = mem[64]
        mem[mem[64]] = 64
        _269 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 96
        while idx < _269:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_265 + 32] = (32 * _269) + 96
        _379 = mem[_142]
        mem[_265 + (32 * _269) + 96] = mem[_142]
        mem[_265 + (32 * _269) + 128 len 32 * _379] = mem[_142 + 32 len 32 * _379]
        return memory
          from mem[64]
           len _265 + (32 * _269) + (32 * _379) + -mem[64] + 128
    mem[_142 + 32 len 32 * _17] = call.data[calldata.size len 32 * _17]
    idx = 0
    while idx < _17:
        require idx < mem[ceil32(return_data.size) + 96]
        _268 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_268)
        require ext_code.size(arg1)
        staticcall arg1.getExternalPositionModules(address arg1) with:
                gas gas_remaining wei
               args address(_268)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _282 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _286 = mem[_282]
        require mem[_282] <= test266151307()
        require _282 + mem[_282] + 31 < _282 + return_data.size
        _288 = mem[_282 + mem[_282]]
        require mem[_282 + mem[_282]] <= test266151307()
        require _282 + ceil32(return_data.size) + (32 * mem[_282 + mem[_282]]) + 32 <= test266151307() and (32 * mem[_282 + mem[_282]]) + 32 >= 0
        mem[64] = _282 + ceil32(return_data.size) + (32 * mem[_282 + mem[_282]]) + 32
        mem[_282 + ceil32(return_data.size)] = _288
        require return_data.size >= _286 + (32 * _288) + 32
        t = _282 + _286 + 32
        u = _282 + ceil32(return_data.size) + 32
        s = 0
        while s < _288:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _288 > 0:
            revert with 0, 'Only default positions are supported'
        require idx < mem[ceil32(return_data.size) + 96]
        _397 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                gas gas_remaining wei
               args address(_397)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _404 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _406 = mem[_404]
        if mem[_404] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if not mem[_404]:
            require idx < mem[_142]
            mem[(32 * idx) + _142 + 32] = 0
        else:
            if not arg2:
                require idx < mem[_142]
                mem[(32 * idx) + _142 + 32] = 0
            else:
                if not mem[_404]:
                    _420 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_420] = 30
                    mem[_420 + 32] = 'SafeMath: subtraction overflow'
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _420 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 * mem[_404] / mem[_404] != arg2:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_422] = 30
                mem[_422 + 32] = 'SafeMath: subtraction overflow'
                if 1 > arg2 * _406:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _422 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                _456 = mem[64]
                mem[64] = mem[64] + 64
                mem[_456] = 26
                mem[_456 + 32] = 'SafeMath: division by zero'
                if ((arg2 * _406) - 1 / 10^18) + 1 < (arg2 * _406) - 1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[_142]
                mem[(32 * idx) + _142 + 32] = ((arg2 * _406) - 1 / 10^18) + 1
        idx = idx + 1
        continue 
    _267 = mem[64]
    mem[mem[64]] = 64
    _271 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 96
    while idx < _271:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_267 + 32] = (32 * _271) + 96
    _381 = mem[_142]
    mem[_267 + (32 * _271) + 96] = mem[_142]
    mem[_267 + (32 * _271) + 128 len 32 * _381] = mem[_142 + 32 len 32 * _381]
    return memory
      from mem[64]
       len _267 + (32 * _271) + (32 * _381) + -mem[64] + 128
}

function redeem(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                    mem[204 len 24]
    if arg2 <= 0:
        revert with 0, 'Redeem quantity must be > 0'
    mem[100] = msg.sender
    mem[132] = arg2
    require ext_code.size(arg1)
    call arg1.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getComponents() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _22 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _23 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _23
    require return_data.size >= _22 + (32 * _23) + 32
    s = _22 + 128
    t = ceil32(return_data.size) + 128
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
        require idx < mem[ceil32(return_data.size) + 96]
        _316 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_316)
        require ext_code.size(arg1)
        staticcall arg1.getExternalPositionModules(address arg1) with:
                gas gas_remaining wei
               args address(_316)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _320 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _321 = mem[_320]
        require mem[_320] <= test266151307()
        require _320 + mem[_320] + 31 < _320 + return_data.size
        _322 = mem[_320 + mem[_320]]
        require mem[_320 + mem[_320]] <= test266151307()
        require _320 + ceil32(return_data.size) + (32 * mem[_320 + mem[_320]]) + 32 <= test266151307() and (32 * mem[_320 + mem[_320]]) + 32 >= 0
        mem[64] = _320 + ceil32(return_data.size) + (32 * mem[_320 + mem[_320]]) + 32
        mem[_320 + ceil32(return_data.size)] = _322
        require return_data.size >= _321 + (32 * _322) + 32
        t = _320 + _321 + 32
        u = _320 + ceil32(return_data.size) + 32
        s = 0
        while s < _322:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _322 > 0:
            revert with 0, 'Only default positions are supported'
        mem[mem[64] + 4] = address(_316)
        require ext_code.size(arg1)
        staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                gas gas_remaining wei
               args address(_316)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _462 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _463 = mem[_462]
        if mem[_462] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if not arg2:
            _468 = mem[64]
            mem[64] = mem[64] + 64
            mem[_468] = 26
            mem[_468 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            continue 
        if mem[_462] * arg2 / arg2 != mem[_462]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _469 = mem[64]
        mem[64] = mem[64] + 64
        mem[_469] = 26
        mem[_469 + 32] = 'SafeMath: division by zero'
        if not _463 * arg2 / 10^18:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_316))
        staticcall address(_316).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not _463 * arg2 / 10^18:
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_316))
            staticcall address(_316).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _488 = mem[64]
            mem[64] = mem[64] + 64
            mem[_488] = 30
            mem[_488 + 32] = 'SafeMath: subtraction overflow'
            if _463 * arg2 / 10^18 <= ext_call.return_data[0]:
                if ext_call.return_data[0] != ext_call.return_data[0] - (_463 * arg2 / 10^18):
                    revert with 0, 'Invalid post transfer balance'
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _488 + 32]
                idx = idx + 32
                continue 
        else:
            _474 = mem[64]
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = _463 * arg2 / 10^18
            _475 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_475 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_475 + 36 len 28]
            mem[_474 + 100] = 0x8f6f033200000000000000000000000000000000000000000000000000000000
            mem[_474 + 104] = address(_316)
            mem[_474 + 136] = 0
            mem[_474 + 168] = 96
            mem[_474 + 200] = mem[_475]
            _479 = mem[_475]
            s = 0
            while s < _479:
                mem[s + _474 + 232] = mem[s + _475 + 32]
                s = s + 32
                continue 
            if not _479 % 32:
                require ext_code.size(arg1)
                call arg1.invoke(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(_316), 0, 96, mem[_474 + 200 len _479 + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_474 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _474 + ceil32(return_data.size) + 100
                require return_data.size >= 32
                _597 = mem[_474 + 100 len 4], address(_316) << 64
                require mem[_474 + 100 len 4], address(_316) << 64 <= 4294967296
                require mem[_474 + 100 len 4], address(_316) << 64 + 32 <= return_data.size
                require return_data.size >= mem[_474 + mem[_474 + 100 len 4], address(_316) << 64 + 100] + mem[_474 + 100 len 4], address(_316) << 64 + 32 and mem[_474 + mem[_474 + 100 len 4], address(_316) << 64 + 100] <= 4294967296
                mem[_474 + ceil32(return_data.size) + 100] = mem[_474 + mem[_474 + 100 len 4], address(_316) << 64 + 100]
                _603 = mem[_474 + _597 + 100]
                s = 0
                while s < _603:
                    mem[s + _474 + ceil32(return_data.size) + 132] = mem[s + _474 + _597 + 132]
                    s = s + 32
                    continue 
                if not _603 % 32:
                    require ext_code.size(address(_316))
                    staticcall address(_316).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = _603 + _474 + ceil32(return_data.size) + 196
                    mem[_603 + _474 + ceil32(return_data.size) + 132] = 30
                    mem[_603 + _474 + ceil32(return_data.size) + 164] = 'SafeMath: subtraction overflow'
                    if _463 * arg2 / 10^18 <= ext_call.return_data[0]:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (_463 * arg2 / 10^18):
                            revert with 0, 'Invalid post transfer balance'
                        idx = idx + 1
                        continue 
                    mem[_603 + _474 + ceil32(return_data.size) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_603 + _474 + ceil32(return_data.size) + 200] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + _603 + _474 + ceil32(return_data.size) + 264] = mem[idx + _603 + _474 + ceil32(return_data.size) + 164]
                        idx = idx + 32
                        continue 
                else:
                    mem[floor32(_603) + _474 + ceil32(return_data.size) + 132] = mem[floor32(_603) + _474 + ceil32(return_data.size) + -(_603 % 32) + 164 len _603 % 32]
                    require ext_code.size(address(_316))
                    staticcall address(_316).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = floor32(_603) + _474 + ceil32(return_data.size) + 228
                    mem[floor32(_603) + _474 + ceil32(return_data.size) + 164] = 30
                    mem[floor32(_603) + _474 + ceil32(return_data.size) + 196] = 'SafeMath: subtraction overflow'
                    if _463 * arg2 / 10^18 <= ext_call.return_data[0]:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (_463 * arg2 / 10^18):
                            revert with 0, 'Invalid post transfer balance'
                        idx = idx + 1
                        continue 
                    mem[floor32(_603) + _474 + ceil32(return_data.size) + 228] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(_603) + _474 + ceil32(return_data.size) + 232] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + floor32(_603) + _474 + ceil32(return_data.size) + 296] = mem[idx + floor32(_603) + _474 + ceil32(return_data.size) + 196]
                        idx = idx + 32
                        continue 
            else:
                mem[floor32(_479) + _474 + 232] = mem[floor32(_479) + _474 + -(_479 % 32) + 264 len _479 % 32]
                require ext_code.size(arg1)
                call arg1.invoke(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args address(_316), 0, 96, mem[_474 + 200 len floor32(_479) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_474 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _474 + ceil32(return_data.size) + 100
                require return_data.size >= 32
                _600 = mem[_474 + 100 len 4], address(_316) << 64
                require mem[_474 + 100 len 4], address(_316) << 64 <= 4294967296
                require mem[_474 + 100 len 4], address(_316) << 64 + 32 <= return_data.size
                require return_data.size >= mem[_474 + mem[_474 + 100 len 4], address(_316) << 64 + 100] + mem[_474 + 100 len 4], address(_316) << 64 + 32 and mem[_474 + mem[_474 + 100 len 4], address(_316) << 64 + 100] <= 4294967296
                mem[_474 + ceil32(return_data.size) + 100] = mem[_474 + mem[_474 + 100 len 4], address(_316) << 64 + 100]
                _605 = mem[_474 + _600 + 100]
                s = 0
                while s < _605:
                    mem[s + _474 + ceil32(return_data.size) + 132] = mem[s + _474 + _600 + 132]
                    s = s + 32
                    continue 
                if not _605 % 32:
                    require ext_code.size(address(_316))
                    staticcall address(_316).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = _605 + _474 + ceil32(return_data.size) + 196
                    mem[_605 + _474 + ceil32(return_data.size) + 132] = 30
                    mem[_605 + _474 + ceil32(return_data.size) + 164] = 'SafeMath: subtraction overflow'
                    if _463 * arg2 / 10^18 <= ext_call.return_data[0]:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (_463 * arg2 / 10^18):
                            revert with 0, 'Invalid post transfer balance'
                        idx = idx + 1
                        continue 
                    mem[_605 + _474 + ceil32(return_data.size) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_605 + _474 + ceil32(return_data.size) + 200] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + _605 + _474 + ceil32(return_data.size) + 264] = mem[idx + _605 + _474 + ceil32(return_data.size) + 164]
                        idx = idx + 32
                        continue 
                else:
                    mem[floor32(_605) + _474 + ceil32(return_data.size) + 132] = mem[floor32(_605) + _474 + ceil32(return_data.size) + -(_605 % 32) + 164 len _605 % 32]
                    require ext_code.size(address(_316))
                    staticcall address(_316).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[64] = floor32(_605) + _474 + ceil32(return_data.size) + 228
                    mem[floor32(_605) + _474 + ceil32(return_data.size) + 164] = 30
                    mem[floor32(_605) + _474 + ceil32(return_data.size) + 196] = 'SafeMath: subtraction overflow'
                    if _463 * arg2 / 10^18 <= ext_call.return_data[0]:
                        if ext_call.return_data[0] != ext_call.return_data[0] - (_463 * arg2 / 10^18):
                            revert with 0, 'Invalid post transfer balance'
                        idx = idx + 1
                        continue 
                    mem[floor32(_605) + _474 + ceil32(return_data.size) + 228] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[floor32(_605) + _474 + ceil32(return_data.size) + 232] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + floor32(_605) + _474 + ceil32(return_data.size) + 296] = mem[idx + floor32(_605) + _474 + ceil32(return_data.size) + 196]
                        idx = idx + 32
                        continue 
        revert with 0, 'SafeMath: subtraction overflow'
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
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x74ebe3ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                    mem[204 len 24]
    if arg2 <= 0:
        revert with 0, 'Issue quantity must be > 0'
    mem[0] = arg1
    mem[32] = 2
    if not managerIssuanceHook[address(arg1)]:
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x74ebe3ec with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                        mem[204 len 24]
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.isInitializedModule(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                        mem[204 len 24]
        mem[96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getComponents() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _47 = mem[96]
        require mem[96] <= test266151307()
        require mem[96] + 127 < return_data.size + 96
        _50 = mem[mem[96] + 96]
        require mem[mem[96] + 96] <= test266151307()
        require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _50
        require return_data.size >= _47 + (32 * _50) + 32
        s = _47 + 128
        t = ceil32(return_data.size) + 128
        idx = 0
        while idx < _50:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require _50 <= test266151307()
        _654 = mem[64]
        mem[mem[64]] = _50
        mem[64] = mem[64] + (32 * _50) + 32
        if not _50:
            idx = 0
            while idx < _50:
                require idx < mem[ceil32(return_data.size) + 96]
                _1252 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1252)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1252)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1292 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1302 = mem[_1292]
                require mem[_1292] <= test266151307()
                require _1292 + mem[_1292] + 31 < _1292 + return_data.size
                _1317 = mem[_1292 + mem[_1292]]
                require mem[_1292 + mem[_1292]] <= test266151307()
                require _1292 + ceil32(return_data.size) + (32 * mem[_1292 + mem[_1292]]) + 32 <= test266151307() and (32 * mem[_1292 + mem[_1292]]) + 32 >= 0
                mem[64] = _1292 + ceil32(return_data.size) + (32 * mem[_1292 + mem[_1292]]) + 32
                mem[_1292 + ceil32(return_data.size)] = _1317
                require return_data.size >= _1302 + (32 * _1317) + 32
                t = _1292 + _1302 + 32
                u = _1292 + ceil32(return_data.size) + 32
                s = 0
                while s < _1317:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1317 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[ceil32(return_data.size) + 96]
                _1882 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_1882)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1920 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1936 = mem[_1920]
                if mem[_1920] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_1920]:
                    require idx < mem[_654]
                    mem[(32 * idx) + _654 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_654]
                        mem[(32 * idx) + _654 + 32] = 0
                    else:
                        if not mem[_1920]:
                            _2116 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2116] = 30
                            mem[_2116 + 32] = 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2116 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_1920] / mem[_1920] != arg2:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2140] = 30
                        mem[_2140 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _1936:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2140 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        _2270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2270] = 26
                        mem[_2270 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _1936) - 1 / 10^18) + 1 < (arg2 * _1936) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_654]
                        mem[(32 * idx) + _654 + 32] = ((arg2 * _1936) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _1832 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _1832:
                require idx < mem[ceil32(return_data.size) + 96]
                _1844 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require idx < mem[_654]
                _1861 = mem[(32 * idx) + _654 + 32]
                if mem[(32 * idx) + _654 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1844))
                    staticcall address(_1844).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1916 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _1861
                    _1917 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1917 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1917 + 36 len 28]
                    mem[64] = _1916 + 196
                    mem[_1916 + 132] = 32
                    mem[_1916 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_1844)):
                        revert with 0, 'Address: call to non-contract'
                    _1941 = mem[_1917]
                    t = _1917 + 32
                    u = _1916 + 196
                    s = mem[_1917]
                    while s >= 32:
                        mem[u] = mem[t]
                        _1832 = mem[ceil32(return_data.size) + 96]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1916 + floor32(mem[_1917]) + 196] = mem[_1917 + -(mem[_1917] % 32) + floor32(mem[_1917]) + 64 len mem[_1917] % 32] or Mask(8 * -(mem[_1917] % 32) + 32, -(8 * -(mem[_1917] % 32) + 32) + 256, mem[_1916 + floor32(mem[_1917]) + 196])
                    call address(_1844).mem[_1916 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_1916 + 200 len _1941 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1916 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1916 + 200] = 32
                            mem[_1916 + 232] = 32
                            mem[_1916 + 264] = mem[_1916 + 164]
                            idx = 32
                            while idx < 32:
                                mem[idx + _1916 + 264] = mem[idx + _1916 + 164]
                                _1832 = mem[ceil32(return_data.size) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1916 + 164]
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1916 + 306 len 22]
                        mem[_1916 + 200] = arg1
                        require ext_code.size(address(_1844))
                        staticcall address(_1844).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_1916 + 196] = ext_call.return_data[0]
                    else:
                        mem[64] = _1916 + ceil32(return_data.size) + 197
                        mem[_1916 + 196] = return_data.size
                        mem[_1916 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1916 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1916 + ceil32(return_data.size) + 201] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1916 + ceil32(return_data.size) + 265] = mem[idx + _1916 + 164]
                                _1832 = mem[ceil32(return_data.size) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1916 + 164]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1916 + 228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1916 + ceil32(return_data.size) + 307 len 22]
                        mem[_1916 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_1844))
                        staticcall address(_1844).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_1916 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _1861 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _1861 + ext_call.return_data[0]:
                        revert with 0, 'Invalid post transfer balance'
                _1832 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
        else:
            mem[_654 + 32 len 32 * _50] = call.data[calldata.size len 32 * _50]
            idx = 0
            while idx < _50:
                require idx < mem[ceil32(return_data.size) + 96]
                _1253 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1253)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1253)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1293 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1305 = mem[_1293]
                require mem[_1293] <= test266151307()
                require _1293 + mem[_1293] + 31 < _1293 + return_data.size
                _1319 = mem[_1293 + mem[_1293]]
                require mem[_1293 + mem[_1293]] <= test266151307()
                require _1293 + ceil32(return_data.size) + (32 * mem[_1293 + mem[_1293]]) + 32 <= test266151307() and (32 * mem[_1293 + mem[_1293]]) + 32 >= 0
                mem[64] = _1293 + ceil32(return_data.size) + (32 * mem[_1293 + mem[_1293]]) + 32
                mem[_1293 + ceil32(return_data.size)] = _1319
                require return_data.size >= _1305 + (32 * _1319) + 32
                t = _1293 + _1305 + 32
                u = _1293 + ceil32(return_data.size) + 32
                s = 0
                while s < _1319:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1319 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[ceil32(return_data.size) + 96]
                _1886 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_1886)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1925 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1937 = mem[_1925]
                if mem[_1925] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_1925]:
                    require idx < mem[_654]
                    mem[(32 * idx) + _654 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_654]
                        mem[(32 * idx) + _654 + 32] = 0
                    else:
                        if not mem[_1925]:
                            _2121 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2121] = 30
                            mem[_2121 + 32] = 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2121 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_1925] / mem[_1925] != arg2:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2149] = 30
                        mem[_2149 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _1937:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2149 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        _2281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2281] = 26
                        mem[_2281 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _1937) - 1 / 10^18) + 1 < (arg2 * _1937) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_654]
                        mem[(32 * idx) + _654 + 32] = ((arg2 * _1937) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _1833 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _1833:
                require idx < mem[ceil32(return_data.size) + 96]
                _1848 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require idx < mem[_654]
                _1863 = mem[(32 * idx) + _654 + 32]
                if mem[(32 * idx) + _654 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1848))
                    staticcall address(_1848).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1921 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _1863
                    _1922 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1922 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1922 + 36 len 28]
                    mem[64] = _1921 + 196
                    mem[_1921 + 132] = 32
                    mem[_1921 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_1848)):
                        revert with 0, 'Address: call to non-contract'
                    _1945 = mem[_1922]
                    t = _1922 + 32
                    u = _1921 + 196
                    s = mem[_1922]
                    while s >= 32:
                        mem[u] = mem[t]
                        _1833 = mem[ceil32(return_data.size) + 96]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1921 + floor32(mem[_1922]) + 196] = mem[_1922 + -(mem[_1922] % 32) + floor32(mem[_1922]) + 64 len mem[_1922] % 32] or Mask(8 * -(mem[_1922] % 32) + 32, -(8 * -(mem[_1922] % 32) + 32) + 256, mem[_1921 + floor32(mem[_1922]) + 196])
                    call address(_1848).mem[_1921 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_1921 + 200 len _1945 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1921 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1921 + 200] = 32
                            mem[_1921 + 232] = 32
                            mem[_1921 + 264] = mem[_1921 + 164]
                            idx = 32
                            while idx < 32:
                                mem[idx + _1921 + 264] = mem[idx + _1921 + 164]
                                _1833 = mem[ceil32(return_data.size) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1921 + 164]
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1921 + 306 len 22]
                        mem[_1921 + 200] = arg1
                        require ext_code.size(address(_1848))
                        staticcall address(_1848).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_1921 + 196] = ext_call.return_data[0]
                    else:
                        mem[64] = _1921 + ceil32(return_data.size) + 197
                        mem[_1921 + 196] = return_data.size
                        mem[_1921 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1921 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1921 + ceil32(return_data.size) + 201] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1921 + ceil32(return_data.size) + 265] = mem[idx + _1921 + 164]
                                _1833 = mem[ceil32(return_data.size) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1921 + 164]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1921 + 228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1921 + ceil32(return_data.size) + 307 len 22]
                        mem[_1921 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_1848))
                        staticcall address(_1848).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_1921 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _1863 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _1863 + ext_call.return_data[0]:
                        revert with 0, 'Invalid post transfer balance'
                _1833 = mem[ceil32(return_data.size) + 96]
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
        mem[132] = arg2
        mem[164] = msg.sender
        mem[196] = arg3
        require ext_code.size(managerIssuanceHook[address(arg1)])
        call managerIssuanceHook[address(arg1)].invokePreIssueHook(address arg1, uint256 arg2, address arg3, address arg4) with:
             gas gas_remaining wei
            args 0, 0, arg2, msg.sender, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x74ebe3ec with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                        Mask(96, 0, arg3) << 96
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.isInitializedModule(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420536574546f6b65,
                        Mask(96, 0, arg3) << 96
        mem[96] = 0x99d50d5d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getComponents() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _53 = mem[96]
        require mem[96] <= test266151307()
        require mem[96] + 127 < return_data.size + 96
        _54 = mem[mem[96] + 96]
        require mem[mem[96] + 96] <= test266151307()
        require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _54
        require return_data.size >= _53 + (32 * _54) + 32
        s = _53 + 128
        t = ceil32(return_data.size) + 128
        idx = 0
        while idx < _54:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require _54 <= test266151307()
        _655 = mem[64]
        mem[mem[64]] = _54
        mem[64] = mem[64] + (32 * _54) + 32
        if not _54:
            idx = 0
            while idx < _54:
                require idx < mem[ceil32(return_data.size) + 96]
                _1254 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1254)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1254)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1294 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1308 = mem[_1294]
                require mem[_1294] <= test266151307()
                require _1294 + mem[_1294] + 31 < _1294 + return_data.size
                _1321 = mem[_1294 + mem[_1294]]
                require mem[_1294 + mem[_1294]] <= test266151307()
                require _1294 + ceil32(return_data.size) + (32 * mem[_1294 + mem[_1294]]) + 32 <= test266151307() and (32 * mem[_1294 + mem[_1294]]) + 32 >= 0
                mem[64] = _1294 + ceil32(return_data.size) + (32 * mem[_1294 + mem[_1294]]) + 32
                mem[_1294 + ceil32(return_data.size)] = _1321
                require return_data.size >= _1308 + (32 * _1321) + 32
                t = _1294 + _1308 + 32
                u = _1294 + ceil32(return_data.size) + 32
                s = 0
                while s < _1321:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1321 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[ceil32(return_data.size) + 96]
                _1890 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_1890)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1930 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1938 = mem[_1930]
                if mem[_1930] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_1930]:
                    require idx < mem[_655]
                    mem[(32 * idx) + _655 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_655]
                        mem[(32 * idx) + _655 + 32] = 0
                    else:
                        if not mem[_1930]:
                            _2126 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2126] = 30
                            mem[_2126 + 32] = 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2126 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_1930] / mem[_1930] != arg2:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2158 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2158] = 30
                        mem[_2158 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _1938:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2158 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        _2292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2292] = 26
                        mem[_2292 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _1938) - 1 / 10^18) + 1 < (arg2 * _1938) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_655]
                        mem[(32 * idx) + _655 + 32] = ((arg2 * _1938) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _1834 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _1834:
                require idx < mem[ceil32(return_data.size) + 96]
                _1852 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require idx < mem[_655]
                _1865 = mem[(32 * idx) + _655 + 32]
                if mem[(32 * idx) + _655 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1852))
                    staticcall address(_1852).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1926 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _1865
                    _1927 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1927 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1927 + 36 len 28]
                    mem[64] = _1926 + 196
                    mem[_1926 + 132] = 32
                    mem[_1926 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_1852)):
                        revert with 0, 'Address: call to non-contract'
                    _1949 = mem[_1927]
                    t = _1927 + 32
                    u = mem[64]
                    s = mem[_1927]
                    while s >= 32:
                        mem[u] = mem[t]
                        _1834 = mem[ceil32(return_data.size) + 96]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1927])] = mem[_1927 + floor32(mem[_1927]) + -(mem[_1927] % 32) + 64 len mem[_1927] % 32] or Mask(8 * -(mem[_1927] % 32) + 32, -(8 * -(mem[_1927] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1927])])
                    call address(_1852).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1949 + _1926 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2460 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_1926 + 132]
                            _2462 = mem[_1926 + 132]
                            if not mem[_1926 + 132]:
                                if not mem[_1926 + 132] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[_1926 + 132] + 32]
                                mem[floor32(mem[_1926 + 132]) + mem[64] + 68] = mem[floor32(mem[_1926 + 132]) + mem[64] + -(mem[_1926 + 132] % 32) + 100 len mem[_1926 + 132] % 32]
                            else:
                                mem[mem[64] + 68] = mem[_1926 + 164]
                                idx = 32
                                while idx < _2462:
                                    mem[idx + mem[64] + 68] = mem[idx + _1926 + 164]
                                    _1834 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                if not _2462 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _2462 + _2460 + -mem[64] + 68
                                mem[floor32(_2462) + _2460 + 68] = mem[floor32(_2462) + _2460 + -(_2462 % 32) + 100 len _2462 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2462) + _2460 + -mem[64] + 100
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _2418 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2418] = return_data.size
                        mem[_2418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2464 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_1926 + 132]
                            _2466 = mem[_1926 + 132]
                            if not mem[_1926 + 132]:
                                if not mem[_1926 + 132] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[_1926 + 132] + 32]
                                mem[floor32(mem[_1926 + 132]) + mem[64] + 68] = mem[floor32(mem[_1926 + 132]) + mem[64] + -(mem[_1926 + 132] % 32) + 100 len mem[_1926 + 132] % 32]
                            else:
                                mem[mem[64] + 68] = mem[_1926 + 164]
                                idx = 32
                                while idx < _2466:
                                    mem[idx + mem[64] + 68] = mem[idx + _1926 + 164]
                                    _1834 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                if not _2466 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _2466 + _2464 + -mem[64] + 68
                                mem[floor32(_2466) + _2464 + 68] = mem[floor32(_2466) + _2464 + -(_2466 % 32) + 100 len _2466 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2466) + _2464 + -mem[64] + 100
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2418 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1852))
                    staticcall address(_1852).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _1865 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _1865 + ext_call.return_data[0]:
                        revert with 0, 'Invalid post transfer balance'
                _1834 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
        else:
            mem[_655 + 32 len 32 * _54] = call.data[calldata.size len 32 * _54]
            idx = 0
            while idx < _54:
                require idx < mem[ceil32(return_data.size) + 96]
                _1255 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1255)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1255)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1295 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1311 = mem[_1295]
                require mem[_1295] <= test266151307()
                require _1295 + mem[_1295] + 31 < _1295 + return_data.size
                _1323 = mem[_1295 + mem[_1295]]
                require mem[_1295 + mem[_1295]] <= test266151307()
                require _1295 + ceil32(return_data.size) + (32 * mem[_1295 + mem[_1295]]) + 32 <= test266151307() and (32 * mem[_1295 + mem[_1295]]) + 32 >= 0
                mem[64] = _1295 + ceil32(return_data.size) + (32 * mem[_1295 + mem[_1295]]) + 32
                mem[_1295 + ceil32(return_data.size)] = _1323
                require return_data.size >= _1311 + (32 * _1323) + 32
                t = _1295 + _1311 + 32
                u = _1295 + ceil32(return_data.size) + 32
                s = 0
                while s < _1323:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1323 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[ceil32(return_data.size) + 96]
                _1894 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_1894)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1939 = mem[_1935]
                if mem[_1935] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_1935]:
                    require idx < mem[_655]
                    mem[(32 * idx) + _655 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_655]
                        mem[(32 * idx) + _655 + 32] = 0
                    else:
                        if not mem[_1935]:
                            _2131 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2131] = 30
                            mem[_2131 + 32] = 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2131 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_1935] / mem[_1935] != arg2:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2167] = 30
                        mem[_2167 + 32] = 'SafeMath: subtraction overflow'
                        if 1 > arg2 * _1939:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _2167 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        _2303 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2303] = 26
                        mem[_2303 + 32] = 'SafeMath: division by zero'
                        if ((arg2 * _1939) - 1 / 10^18) + 1 < (arg2 * _1939) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_655]
                        mem[(32 * idx) + _655 + 32] = ((arg2 * _1939) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _1835 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _1835:
                require idx < mem[ceil32(return_data.size) + 96]
                _1856 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require idx < mem[_655]
                _1867 = mem[(32 * idx) + _655 + 32]
                if mem[(32 * idx) + _655 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1856))
                    staticcall address(_1856).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1931 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _1867
                    _1932 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1932 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1932 + 36 len 28]
                    mem[64] = _1931 + 196
                    mem[_1931 + 132] = 32
                    mem[_1931 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_1856)):
                        revert with 0, 'Address: call to non-contract'
                    _1953 = mem[_1932]
                    t = _1932 + 32
                    u = _1931 + 196
                    s = mem[_1932]
                    while s >= 32:
                        mem[u] = mem[t]
                        _1835 = mem[ceil32(return_data.size) + 96]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1931 + floor32(mem[_1932]) + 196] = mem[_1932 + -(mem[_1932] % 32) + floor32(mem[_1932]) + 64 len mem[_1932] % 32] or Mask(8 * -(mem[_1932] % 32) + 32, -(8 * -(mem[_1932] % 32) + 32) + 256, mem[_1931 + floor32(mem[_1932]) + 196])
                    call address(_1856).mem[_1931 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_1931 + 200 len _1953 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1931 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1931 + 200] = 32
                            mem[_1931 + 232] = 32
                            mem[_1931 + 264] = mem[_1931 + 164]
                            idx = 32
                            while idx < 32:
                                mem[idx + _1931 + 264] = mem[idx + _1931 + 164]
                                _1835 = mem[ceil32(return_data.size) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1931 + 164]
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1931 + 306 len 22]
                        mem[_1931 + 200] = arg1
                        require ext_code.size(address(_1856))
                        staticcall address(_1856).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_1931 + 196] = ext_call.return_data[0]
                    else:
                        mem[64] = _1931 + ceil32(return_data.size) + 197
                        mem[_1931 + 196] = return_data.size
                        mem[_1931 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1931 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1931 + ceil32(return_data.size) + 201] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _1931 + ceil32(return_data.size) + 265] = mem[idx + _1931 + 164]
                                _1835 = mem[ceil32(return_data.size) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1931 + 164]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1931 + 228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1931 + ceil32(return_data.size) + 307 len 22]
                        mem[_1931 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_1856))
                        staticcall address(_1856).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_1931 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _1867 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _1867 + ext_call.return_data[0]:
                        revert with 0, 'Invalid post transfer balance'
                _1835 = mem[ceil32(return_data.size) + 96]
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
