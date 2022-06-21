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
    staticcall arg1.0x481c6a75 with:
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
    staticcall arg1.isPendingModule(address arg1) with:
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
    staticcall arg1.isInitializedModule(address arg1) with:
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
    require return_data.size >= 32
    _16 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
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
    _100 = mem[64]
    mem[mem[64]] = _17
    mem[64] = mem[64] + (32 * _17) + 32
    if not _17:
        idx = 0
        while idx < _17:
            require idx < mem[(4 * ceil32(return_data.size)) + 96]
            _182 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_182)
            require ext_code.size(arg1)
            staticcall arg1.getExternalPositionModules(address arg1) with:
                    gas gas_remaining wei
                   args address(_182)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _195 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _198 = mem[_195]
            require mem[_195] <= test266151307()
            require _195 + mem[_195] + 31 < _195 + return_data.size
            _203 = mem[_195 + mem[_195]]
            require mem[_195 + mem[_195]] <= test266151307()
            require (32 * mem[_195 + mem[_195]]) + 32 >= 0 and _195 + ceil32(return_data.size) + (32 * mem[_195 + mem[_195]]) + 32 <= test266151307()
            mem[64] = _195 + ceil32(return_data.size) + (32 * mem[_195 + mem[_195]]) + 32
            mem[_195 + ceil32(return_data.size)] = _203
            require return_data.size >= _198 + (32 * _203) + 32
            t = _195 + _198 + 32
            u = _195 + ceil32(return_data.size) + 32
            s = 0
            while s < _203:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _203 > 0:
                revert with 0, 'Only default positions are supported'
            require idx < mem[(4 * ceil32(return_data.size)) + 96]
            _268 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                    gas gas_remaining wei
                   args address(_268)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_277] < 0:
                revert with 0, 'SafeCast: value must be positive'
            if not mem[_277]:
                require idx < mem[_100]
                mem[(32 * idx) + _100 + 32] = 0
            else:
                if not arg2:
                    require idx < mem[_100]
                    mem[(32 * idx) + _100 + 32] = 0
                else:
                    if not mem[_277]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 * mem[_277] / mem[_277] != arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 1 > arg2 * mem[_277]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((arg2 * mem[_277]) - 1 / 10^18) + 1 < (arg2 * mem[_277]) - 1 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[_100]
                    mem[(32 * idx) + _100 + 32] = ((arg2 * mem[_277]) - 1 / 10^18) + 1
            idx = idx + 1
            continue 
        _181 = mem[64]
        mem[mem[64]] = 64
        _185 = mem[(4 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 64] = mem[(4 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = mem[64] + 96
        while idx < _185:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_181 + 32] = (32 * _185) + 96
        _253 = mem[_100]
        mem[_181 + (32 * _185) + 96] = mem[_100]
        mem[_181 + (32 * _185) + 128 len 32 * _253] = mem[_100 + 32 len 32 * _253]
        return memory
          from mem[64]
           len _181 + (32 * _185) + (32 * _253) + -mem[64] + 128
    mem[_100 + 32 len 32 * _17] = call.data[calldata.size len 32 * _17]
    idx = 0
    while idx < _17:
        require idx < mem[(4 * ceil32(return_data.size)) + 96]
        _184 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_184)
        require ext_code.size(arg1)
        staticcall arg1.getExternalPositionModules(address arg1) with:
                gas gas_remaining wei
               args address(_184)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _200 = mem[_196]
        require mem[_196] <= test266151307()
        require _196 + mem[_196] + 31 < _196 + return_data.size
        _204 = mem[_196 + mem[_196]]
        require mem[_196 + mem[_196]] <= test266151307()
        require (32 * mem[_196 + mem[_196]]) + 32 >= 0 and _196 + ceil32(return_data.size) + (32 * mem[_196 + mem[_196]]) + 32 <= test266151307()
        mem[64] = _196 + ceil32(return_data.size) + (32 * mem[_196 + mem[_196]]) + 32
        mem[_196 + ceil32(return_data.size)] = _204
        require return_data.size >= _200 + (32 * _204) + 32
        t = _196 + _200 + 32
        u = _196 + ceil32(return_data.size) + 32
        s = 0
        while s < _204:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _204 > 0:
            revert with 0, 'Only default positions are supported'
        require idx < mem[(4 * ceil32(return_data.size)) + 96]
        _271 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                gas gas_remaining wei
               args address(_271)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_278] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if not mem[_278]:
            require idx < mem[_100]
            mem[(32 * idx) + _100 + 32] = 0
        else:
            if not arg2:
                require idx < mem[_100]
                mem[(32 * idx) + _100 + 32] = 0
            else:
                if not mem[_278]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 * mem[_278] / mem[_278] != arg2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 1 > arg2 * mem[_278]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((arg2 * mem[_278]) - 1 / 10^18) + 1 < (arg2 * mem[_278]) - 1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[_100]
                mem[(32 * idx) + _100 + 32] = ((arg2 * mem[_278]) - 1 / 10^18) + 1
        idx = idx + 1
        continue 
    _183 = mem[64]
    mem[mem[64]] = 64
    _187 = mem[(4 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 64] = mem[(4 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = mem[64] + 96
    while idx < _187:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_183 + 32] = (32 * _187) + 96
    _255 = mem[_100]
    mem[_183 + (32 * _187) + 96] = mem[_100]
    mem[_183 + (32 * _187) + 128 len 32 * _255] = mem[_100 + 32 len 32 * _255]
    return memory
      from mem[64]
       len _183 + (32 * _187) + (32 * _255) + -mem[64] + 128
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
    staticcall arg1.isInitializedModule(address arg1) with:
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
    call arg1.0x9dc29fac with:
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
    require return_data.size >= 32
    _22 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 128
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
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
        _200 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_200)
        require ext_code.size(arg1)
        staticcall arg1.getExternalPositionModules(address arg1) with:
                gas gas_remaining wei
               args address(_200)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _205 = mem[_204]
        require mem[_204] <= test266151307()
        require _204 + mem[_204] + 31 < _204 + return_data.size
        _206 = mem[_204 + mem[_204]]
        require mem[_204 + mem[_204]] <= test266151307()
        require (32 * mem[_204 + mem[_204]]) + 32 >= 0 and _204 + ceil32(return_data.size) + (32 * mem[_204 + mem[_204]]) + 32 <= test266151307()
        mem[64] = _204 + ceil32(return_data.size) + (32 * mem[_204 + mem[_204]]) + 32
        mem[_204 + ceil32(return_data.size)] = _206
        require return_data.size >= _205 + (32 * _206) + 32
        t = _204 + _205 + 32
        u = _204 + ceil32(return_data.size) + 32
        s = 0
        while s < _206:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _206 > 0:
            revert with 0, 'Only default positions are supported'
        mem[mem[64] + 4] = address(_200)
        require ext_code.size(arg1)
        staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                gas gas_remaining wei
               args address(_200)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _289 = mem[_288]
        if mem[_288] < 0:
            revert with 0, 'SafeCast: value must be positive'
        if arg2:
            if mem[_288] * arg2 / arg2 != mem[_288]:
                revert with 0, 'SafeMath: multiplication overflow'
            if mem[_288] * arg2 / 10^18:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_200))
                staticcall address(_200).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _297 = mem[_296]
                if not _289 * arg2 / 10^18:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_200))
                    staticcall address(_200).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _289 * arg2 / 10^18 > _297:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if mem[_305] != _297 - (_289 * arg2 / 10^18):
                        revert with 0, 'Invalid post transfer balance'
                else:
                    _298 = mem[64]
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = _289 * arg2 / 10^18
                    _300 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_300 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_300 + 36 len 28]
                    mem[_298 + 100] = 0x8f6f033200000000000000000000000000000000000000000000000000000000
                    mem[_298 + 104] = address(_200)
                    mem[_298 + 136] = 0
                    mem[_298 + 168] = 96
                    _304 = mem[_300]
                    mem[_298 + 200] = mem[_300]
                    s = 0
                    while s < _304:
                        mem[s + _298 + 232] = mem[s + _300 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_304) <= _304:
                        require ext_code.size(arg1)
                        call arg1.invoke(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(_200), 0, 96, mem[_298 + 200 len ceil32(_304) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_298 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _298 + ceil32(return_data.size) + 100
                        require return_data.size >= 32
                        _361 = mem[_298 + 100 len 4], address(_200) << 64
                        require mem[_298 + 100 len 4], address(_200) << 64 <= test266151307()
                        require _298 + mem[_298 + 100 len 4], address(_200) << 64 + 131 < _298 + return_data.size + 100
                        _363 = mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]
                        require mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100] <= test266151307()
                        require ceil32(mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]) + 32 >= 0 and _298 + ceil32(return_data.size) + ceil32(mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]) + 132 <= test266151307()
                        mem[64] = _298 + ceil32(return_data.size) + ceil32(mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]) + 132
                        mem[_298 + ceil32(return_data.size) + 100] = _363
                        require _361 + _363 + 32 <= return_data.size
                        s = 0
                        while s < _363:
                            mem[s + _298 + ceil32(return_data.size) + 132] = mem[s + _298 + _361 + 132]
                            s = s + 32
                            continue 
                        if ceil32(_363) <= _363:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(_200))
                            staticcall address(_200).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _289 * arg2 / 10^18 > _297:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if mem[_411] != _297 - (_289 * arg2 / 10^18):
                                revert with 0, 'Invalid post transfer balance'
                        else:
                            mem[_363 + _298 + ceil32(return_data.size) + 132] = 0
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(_200))
                            staticcall address(_200).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _412 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _289 * arg2 / 10^18 > _297:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if mem[_412] != _297 - (_289 * arg2 / 10^18):
                                revert with 0, 'Invalid post transfer balance'
                    else:
                        mem[_304 + _298 + 232] = 0
                        require ext_code.size(arg1)
                        call arg1.invoke(address arg1, uint256 arg2, bytes arg3) with:
                             gas gas_remaining wei
                            args address(_200), 0, 96, mem[_298 + 200 len ceil32(_304) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_298 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _298 + ceil32(return_data.size) + 100
                        require return_data.size >= 32
                        _362 = mem[_298 + 100 len 4], address(_200) << 64
                        require mem[_298 + 100 len 4], address(_200) << 64 <= test266151307()
                        require _298 + mem[_298 + 100 len 4], address(_200) << 64 + 131 < _298 + return_data.size + 100
                        _364 = mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]
                        require mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100] <= test266151307()
                        require ceil32(mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]) + 32 >= 0 and _298 + ceil32(return_data.size) + ceil32(mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]) + 132 <= test266151307()
                        mem[64] = _298 + ceil32(return_data.size) + ceil32(mem[_298 + mem[_298 + 100 len 4], address(_200) << 64 + 100]) + 132
                        mem[_298 + ceil32(return_data.size) + 100] = _364
                        require _362 + _364 + 32 <= return_data.size
                        s = 0
                        while s < _364:
                            mem[s + _298 + ceil32(return_data.size) + 132] = mem[s + _298 + _362 + 132]
                            s = s + 32
                            continue 
                        if ceil32(_364) <= _364:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(_200))
                            staticcall address(_200).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _289 * arg2 / 10^18 > _297:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if mem[_413] != _297 - (_289 * arg2 / 10^18):
                                revert with 0, 'Invalid post transfer balance'
                        else:
                            mem[_364 + _298 + ceil32(return_data.size) + 132] = 0
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(_200))
                            staticcall address(_200).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _414 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _289 * arg2 / 10^18 > _297:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if mem[_414] != _297 - (_289 * arg2 / 10^18):
                                revert with 0, 'Invalid post transfer balance'
        idx = idx + 1
        continue 
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
    staticcall arg1.isInitializedModule(address arg1) with:
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
        staticcall arg1.isInitializedModule(address arg1) with:
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
        require return_data.size >= 32
        _46 = mem[(6 * ceil32(return_data.size)) + 96]
        require mem[(6 * ceil32(return_data.size)) + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _50 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]
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
        _746 = mem[64]
        mem[mem[64]] = _50
        mem[64] = mem[64] + (32 * _50) + 32
        if not _50:
            idx = 0
            while idx < _50:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1436 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1436)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1436)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1476 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1485 = mem[_1476]
                require mem[_1476] <= test266151307()
                require _1476 + mem[_1476] + 31 < _1476 + return_data.size
                _1497 = mem[_1476 + mem[_1476]]
                require mem[_1476 + mem[_1476]] <= test266151307()
                require (32 * mem[_1476 + mem[_1476]]) + 32 >= 0 and _1476 + ceil32(return_data.size) + (32 * mem[_1476 + mem[_1476]]) + 32 <= test266151307()
                mem[64] = _1476 + ceil32(return_data.size) + (32 * mem[_1476 + mem[_1476]]) + 32
                mem[_1476 + ceil32(return_data.size)] = _1497
                require return_data.size >= _1485 + (32 * _1497) + 32
                t = _1476 + _1485 + 32
                u = _1476 + ceil32(return_data.size) + 32
                s = 0
                while s < _1497:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1497 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2157 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_2157)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2185 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2185] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2185]:
                    require idx < mem[_746]
                    mem[(32 * idx) + _746 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_746]
                        mem[(32 * idx) + _746 + 32] = 0
                    else:
                        if not mem[_2185]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_2185] / mem[_2185] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 1 > arg2 * mem[_2185]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((arg2 * mem[_2185]) - 1 / 10^18) + 1 < (arg2 * mem[_2185]) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_746]
                        mem[(32 * idx) + _746 + 32] = ((arg2 * mem[_2185]) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2108 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2108:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2120 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_746]
                _2137 = mem[(32 * idx) + _746 + 32]
                if mem[(32 * idx) + _746 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2120))
                    staticcall address(_2120).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2192 = mem[_2184]
                    _2200 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2137
                    _2208 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2208 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2208 + 36 len 28]
                    mem[64] = _2200 + 196
                    mem[_2200 + 132] = 32
                    mem[_2200 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2120)):
                        revert with 0, 'Address: call to non-contract'
                    _2232 = mem[_2208]
                    s = 0
                    while s < _2232:
                        mem[s + _2200 + 196] = mem[s + _2208 + 32]
                        _2108 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2232) > _2232:
                        mem[_2232 + _2200 + 196] = 0
                    call address(_2120).mem[_2200 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2200 + 200 len _2232 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2200 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2200 + 200] = 32
                            mem[_2200 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2200 + 264] = mem[idx + _2200 + 164]
                                _2108 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2200 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2200 + 200] = arg1
                        require ext_code.size(address(_2120))
                        staticcall address(_2120).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2200 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2200 + ceil32(return_data.size) + 196
                    else:
                        mem[_2200 + 196] = return_data.size
                        mem[_2200 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2200 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2200 + ceil32(return_data.size) + 201] = 32
                            mem[_2200 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2200 + ceil32(return_data.size) + 265] = mem[idx + _2200 + 164]
                                _2108 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2200 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2200 + 228] == bool(mem[_2200 + 228])
                            if not mem[_2200 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2200 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2120))
                        staticcall address(_2120).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2200 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2200 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2137 + _2192 < _2192:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2137 + _2192:
                        revert with 0, 'Invalid post transfer balance'
                _2108 = mem[(7 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        else:
            mem[_746 + 32 len 32 * _50] = call.data[calldata.size len 32 * _50]
            idx = 0
            while idx < _50:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1437 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1437)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1437)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1477 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1487 = mem[_1477]
                require mem[_1477] <= test266151307()
                require _1477 + mem[_1477] + 31 < _1477 + return_data.size
                _1499 = mem[_1477 + mem[_1477]]
                require mem[_1477 + mem[_1477]] <= test266151307()
                require (32 * mem[_1477 + mem[_1477]]) + 32 >= 0 and _1477 + ceil32(return_data.size) + (32 * mem[_1477 + mem[_1477]]) + 32 <= test266151307()
                mem[64] = _1477 + ceil32(return_data.size) + (32 * mem[_1477 + mem[_1477]]) + 32
                mem[_1477 + ceil32(return_data.size)] = _1499
                require return_data.size >= _1487 + (32 * _1499) + 32
                t = _1477 + _1487 + 32
                u = _1477 + ceil32(return_data.size) + 32
                s = 0
                while s < _1499:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1499 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2160 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_2160)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2187] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2187]:
                    require idx < mem[_746]
                    mem[(32 * idx) + _746 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_746]
                        mem[(32 * idx) + _746 + 32] = 0
                    else:
                        if not mem[_2187]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_2187] / mem[_2187] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 1 > arg2 * mem[_2187]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((arg2 * mem[_2187]) - 1 / 10^18) + 1 < (arg2 * mem[_2187]) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_746]
                        mem[(32 * idx) + _746 + 32] = ((arg2 * mem[_2187]) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2109 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2109:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2124 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_746]
                _2139 = mem[(32 * idx) + _746 + 32]
                if mem[(32 * idx) + _746 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2124))
                    staticcall address(_2124).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2194 = mem[_2186]
                    _2201 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2139
                    _2211 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2211 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2211 + 36 len 28]
                    mem[64] = _2201 + 196
                    mem[_2201 + 132] = 32
                    mem[_2201 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2124)):
                        revert with 0, 'Address: call to non-contract'
                    _2234 = mem[_2211]
                    s = 0
                    while s < _2234:
                        mem[s + _2201 + 196] = mem[s + _2211 + 32]
                        _2109 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2234) > _2234:
                        mem[_2234 + _2201 + 196] = 0
                    call address(_2124).mem[_2201 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2201 + 200 len _2234 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2201 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2201 + 200] = 32
                            mem[_2201 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2201 + 264] = mem[idx + _2201 + 164]
                                _2109 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2201 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2201 + 200] = arg1
                        require ext_code.size(address(_2124))
                        staticcall address(_2124).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2201 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2201 + ceil32(return_data.size) + 196
                    else:
                        mem[_2201 + 196] = return_data.size
                        mem[_2201 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2201 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2201 + ceil32(return_data.size) + 201] = 32
                            mem[_2201 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2201 + ceil32(return_data.size) + 265] = mem[idx + _2201 + 164]
                                _2109 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2201 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2201 + 228] == bool(mem[_2201 + 228])
                            if not mem[_2201 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2201 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2124))
                        staticcall address(_2124).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2201 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2201 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2139 + _2194 < _2194:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2139 + _2194:
                        revert with 0, 'Invalid post transfer balance'
                _2109 = mem[(7 * ceil32(return_data.size)) + 96]
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
        call managerIssuanceHook[address(arg1)].invokePreIssueHook(address arg1, uint256 arg2, address arg3, address arg4) with:
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
        staticcall arg1.isInitializedModule(address arg1) with:
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
        require return_data.size >= 32
        _53 = mem[(6 * ceil32(return_data.size)) + 96]
        require mem[(6 * ceil32(return_data.size)) + 96] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _54 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96] + 96]
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
        _747 = mem[64]
        mem[mem[64]] = _54
        mem[64] = mem[64] + (32 * _54) + 32
        if not _54:
            idx = 0
            while idx < _54:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1438 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1438)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1438)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1478 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1489 = mem[_1478]
                require mem[_1478] <= test266151307()
                require _1478 + mem[_1478] + 31 < _1478 + return_data.size
                _1501 = mem[_1478 + mem[_1478]]
                require mem[_1478 + mem[_1478]] <= test266151307()
                require (32 * mem[_1478 + mem[_1478]]) + 32 >= 0 and _1478 + ceil32(return_data.size) + (32 * mem[_1478 + mem[_1478]]) + 32 <= test266151307()
                mem[64] = _1478 + ceil32(return_data.size) + (32 * mem[_1478 + mem[_1478]]) + 32
                mem[_1478 + ceil32(return_data.size)] = _1501
                require return_data.size >= _1489 + (32 * _1501) + 32
                t = _1478 + _1489 + 32
                u = _1478 + ceil32(return_data.size) + 32
                s = 0
                while s < _1501:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1501 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2163 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_2163)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2189 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2189] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2189]:
                    require idx < mem[_747]
                    mem[(32 * idx) + _747 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_747]
                        mem[(32 * idx) + _747 + 32] = 0
                    else:
                        if not mem[_2189]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_2189] / mem[_2189] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 1 > arg2 * mem[_2189]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((arg2 * mem[_2189]) - 1 / 10^18) + 1 < (arg2 * mem[_2189]) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_747]
                        mem[(32 * idx) + _747 + 32] = ((arg2 * mem[_2189]) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2110 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2110:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2128 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_747]
                _2141 = mem[(32 * idx) + _747 + 32]
                if mem[(32 * idx) + _747 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2128))
                    staticcall address(_2128).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2196 = mem[_2188]
                    _2202 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2141
                    _2214 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2214 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2214 + 36 len 28]
                    mem[64] = _2202 + 196
                    mem[_2202 + 132] = 32
                    mem[_2202 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2128)):
                        revert with 0, 'Address: call to non-contract'
                    _2236 = mem[_2214]
                    s = 0
                    while s < _2236:
                        mem[s + _2202 + 196] = mem[s + _2214 + 32]
                        _2110 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2236) > _2236:
                        mem[_2236 + _2202 + 196] = 0
                    call address(_2128).mem[_2202 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2202 + 200 len _2236 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2202 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2202 + 200] = 32
                            mem[_2202 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2202 + 264] = mem[idx + _2202 + 164]
                                _2110 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2202 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2202 + 200] = arg1
                        require ext_code.size(address(_2128))
                        staticcall address(_2128).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2202 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2202 + ceil32(return_data.size) + 196
                    else:
                        mem[_2202 + 196] = return_data.size
                        mem[_2202 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2202 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2202 + ceil32(return_data.size) + 201] = 32
                            mem[_2202 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2202 + ceil32(return_data.size) + 265] = mem[idx + _2202 + 164]
                                _2110 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2202 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2202 + 228] == bool(mem[_2202 + 228])
                            if not mem[_2202 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2202 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2128))
                        staticcall address(_2128).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2202 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2202 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2141 + _2196 < _2196:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2141 + _2196:
                        revert with 0, 'Invalid post transfer balance'
                _2110 = mem[(7 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
        else:
            mem[_747 + 32 len 32 * _54] = call.data[calldata.size len 32 * _54]
            idx = 0
            while idx < _54:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _1439 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0xa7bdad0300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1439)
                require ext_code.size(arg1)
                staticcall arg1.getExternalPositionModules(address arg1) with:
                        gas gas_remaining wei
                       args address(_1439)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1479 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1491 = mem[_1479]
                require mem[_1479] <= test266151307()
                require _1479 + mem[_1479] + 31 < _1479 + return_data.size
                _1503 = mem[_1479 + mem[_1479]]
                require mem[_1479 + mem[_1479]] <= test266151307()
                require (32 * mem[_1479 + mem[_1479]]) + 32 >= 0 and _1479 + ceil32(return_data.size) + (32 * mem[_1479 + mem[_1479]]) + 32 <= test266151307()
                mem[64] = _1479 + ceil32(return_data.size) + (32 * mem[_1479 + mem[_1479]]) + 32
                mem[_1479 + ceil32(return_data.size)] = _1503
                require return_data.size >= _1491 + (32 * _1503) + 32
                t = _1479 + _1491 + 32
                u = _1479 + ceil32(return_data.size) + 32
                s = 0
                while s < _1503:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _1503 > 0:
                    revert with 0, 'Only default positions are supported'
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2166 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getDefaultPositionRealUnit(address arg1) with:
                        gas gas_remaining wei
                       args address(_2166)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_2191] < 0:
                    revert with 0, 'SafeCast: value must be positive'
                if not mem[_2191]:
                    require idx < mem[_747]
                    mem[(32 * idx) + _747 + 32] = 0
                else:
                    if not arg2:
                        require idx < mem[_747]
                        mem[(32 * idx) + _747 + 32] = 0
                    else:
                        if not mem[_2191]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * mem[_2191] / mem[_2191] != arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 1 > arg2 * mem[_2191]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((arg2 * mem[_2191]) - 1 / 10^18) + 1 < (arg2 * mem[_2191]) - 1 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[_747]
                        mem[(32 * idx) + _747 + 32] = ((arg2 * mem[_2191]) - 1 / 10^18) + 1
                idx = idx + 1
                continue 
            _2111 = mem[(7 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _2111:
                require idx < mem[(7 * ceil32(return_data.size)) + 96]
                _2132 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                require idx < mem[_747]
                _2143 = mem[(32 * idx) + _747 + 32]
                if mem[(32 * idx) + _747 + 32]:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_2132))
                    staticcall address(_2132).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2190 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2198 = mem[_2190]
                    _2203 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = _2143
                    _2217 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_2217 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2217 + 36 len 28]
                    mem[64] = _2203 + 196
                    mem[_2203 + 132] = 32
                    mem[_2203 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_2132)):
                        revert with 0, 'Address: call to non-contract'
                    _2238 = mem[_2217]
                    s = 0
                    while s < _2238:
                        mem[s + _2203 + 196] = mem[s + _2217 + 32]
                        _2111 = mem[(7 * ceil32(return_data.size)) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_2238) > _2238:
                        mem[_2238 + _2203 + 196] = 0
                    call address(_2132).mem[_2203 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_2203 + 200 len _2238 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_2203 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2203 + 200] = 32
                            mem[_2203 + 232] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2203 + 264] = mem[idx + _2203 + 164]
                                _2111 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2203 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2203 + 200] = arg1
                        require ext_code.size(address(_2132))
                        staticcall address(_2132).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2203 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2203 + ceil32(return_data.size) + 196
                    else:
                        mem[_2203 + 196] = return_data.size
                        mem[_2203 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2203 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2203 + ceil32(return_data.size) + 201] = 32
                            mem[_2203 + ceil32(return_data.size) + 233] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _2203 + ceil32(return_data.size) + 265] = mem[idx + _2203 + 164]
                                _2111 = mem[(7 * ceil32(return_data.size)) + 96]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_2203 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2203 + 228] == bool(mem[_2203 + 228])
                            if not mem[_2203 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_2203 + ceil32(return_data.size) + 201] = arg1
                        require ext_code.size(address(_2132))
                        staticcall address(_2132).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[_2203 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2203 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                    require return_data.size >= 32
                    if _2143 + _2198 < _2198:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != _2143 + _2198:
                        revert with 0, 'Invalid post transfer balance'
                _2111 = mem[(7 * ceil32(return_data.size)) + 96]
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
