contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor3;
address factoryManagerAddress;
address implementationAddress;
address feeToAddress;
uint256 flatFee;

function feeTo() {
    return feeToAddress
}

function factoryManager() {
    return factoryManagerAddress
}

function implementation() {
    return implementationAddress
}

function owner() {
    return owner
}

function flatFee() {
    return flatFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFlatFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    flatFee = arg1
}

function setFeeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeToAddress = arg1
}

function setImplementation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    implementationAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c4eae85b(?) payable {
    require calldata.size - 4 >= 288
    require cd[68] == address(cd[68])
    require cd[228] == address(cd[228])
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    if ('cd', 260).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 260).length) + 97 < 96 or ceil32(32 * ('cd', 260).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 260).length) + 97
    mem[96] = ('cd', 260).length
    require calldata.size >= cd[260] + (32 * ('cd', 260).length) + 36
    idx = cd[260] + 36
    s = 128
    while idx < (32 * ('cd', 260).length) + cd[260] + 36:
        require cd[idx] <= test266151307()
        require cd[260] + cd[idx] + 67 < calldata.size
        if cd[(cd[260] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _286 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[260] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[260] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[260] + cd[idx] + 36)])) + 1
        mem[_286] = cd[(cd[260] + cd[idx] + 36)]
        require cd[260] + cd[idx] + cd[(cd[260] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_286 + 32 len cd[(cd[260] + cd[idx] + 36)]] = call.data[cd[260] + cd[idx] + 68 len cd[(cd[260] + cd[idx] + 36)]]
        mem[_286 + cd[(cd[260] + cd[idx] + 36)] + 32] = 0
        mem[s] = _286
        idx = idx + 32
        s = s + 32
        continue 
    if msg.value < flatFee:
        revert with 0, 'Flat fee'
    if not stor3 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if msg.value < flatFee:
        revert with 0, 17
    if not msg.value - flatFee:
        if eth.balance(this.address) < flatFee:
            revert with 0, 'Address: insufficient balance'
        call feeToAddress with:
           value flatFee wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            mem[mem[64] + 4] = address(cd[68])
            staticcall factoryManagerAddress.0xc226c4bb with:
                    gas gas_remaining wei
                   args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            _310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_310] == bool(mem[_310])
            if not mem[_310]:
                revert with 0, 'Not allowed router'
            create contract with 0 wei
                            code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
            if not address(create.new_address):
                revert with 0, 'ERC1167: create failed'
            if cd[4] and cd[36] > -1 / cd[4]:
                revert with 0, 17
            if cd[4] > !(cd[4] * cd[36] / 100):
                revert with 0, 17
            _378 = mem[64]
            mem[mem[64]] = 0x35397c6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = cd[4]
            mem[mem[64] + 100] = cd[36]
            mem[mem[64] + 132] = address(cd[68])
            mem[mem[64] + 164] = cd[100]
            mem[mem[64] + 196] = cd[132]
            mem[mem[64] + 228] = cd[164]
            mem[mem[64] + 260] = cd[196]
            mem[mem[64] + 292] = address(cd[228])
            mem[mem[64] + 324] = 352
            _380 = mem[96]
            mem[mem[64] + 356] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 388
            u = mem[64] + (32 * mem[96]) + 388
            while idx < _380:
                mem[t] = u + -_378 - 388
                _564 = mem[s]
                _565 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _565:
                    mem[v + u + 32] = mem[v + _564 + 32]
                    v = v + 32
                    continue 
                if ceil32(_565) > _565:
                    mem[u + _565 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_565) + u + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            staticcall address(cd[228]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            _600 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_600] < cd[4] + (cd[4] * cd[36] / 100):
                revert with 0, 'Balance invalid.'
            mem[mem[64] + 4] = address(create.new_address)
            staticcall address(cd[228]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(create.new_address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _630 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _642 = mem[_630]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = cd[4] + (cd[4] * cd[36] / 100)
            call address(cd[228]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), cd[4] + (cd[4] * cd[36] / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _660 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_660] == bool(mem[_660])
            mem[mem[64] + 36] = address(create.new_address)
            require ext_code.size(factoryManagerAddress)
            call factoryManagerAddress.0x59cebe14 with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(create.new_address)
            staticcall address(cd[228]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(create.new_address)
            mem[mem[64]] = ext_call.return_data[0]
            _696 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_696] < _642:
                revert with 0, 17
            if mem[_696] - _642 != cd[4] + (cd[4] * cd[36] / 100):
                revert with 0, 'Please exclude fee the owner!'
        else:
            _296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_296] = return_data.size
            mem[_296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            mem[mem[64] + 4] = address(cd[68])
            staticcall factoryManagerAddress.0xc226c4bb with:
                    gas gas_remaining wei
                   args address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_311] == bool(mem[_311])
            if not mem[_311]:
                revert with 0, 'Not allowed router'
            create contract with 0 wei
                            code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
            if not address(create.new_address):
                revert with 0, 'ERC1167: create failed'
            if cd[4] and cd[36] > -1 / cd[4]:
                revert with 0, 17
            if cd[4] > !(cd[4] * cd[36] / 100):
                revert with 0, 17
            _379 = mem[64]
            mem[mem[64]] = 0x35397c6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = cd[4]
            mem[mem[64] + 100] = cd[36]
            mem[mem[64] + 132] = address(cd[68])
            mem[mem[64] + 164] = cd[100]
            mem[mem[64] + 196] = cd[132]
            mem[mem[64] + 228] = cd[164]
            mem[mem[64] + 260] = cd[196]
            mem[mem[64] + 292] = address(cd[228])
            mem[mem[64] + 324] = 352
            _381 = mem[96]
            mem[mem[64] + 356] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 388
            u = mem[64] + (32 * mem[96]) + 388
            while idx < _381:
                mem[t] = u + -_379 - 388
                _566 = mem[s]
                _567 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _567:
                    mem[v + u + 32] = mem[v + _566 + 32]
                    v = v + 32
                    continue 
                if ceil32(_567) > _567:
                    mem[u + _567 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_567) + u + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            staticcall address(cd[228]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            _601 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_601] < cd[4] + (cd[4] * cd[36] / 100):
                revert with 0, 'Balance invalid.'
            mem[mem[64] + 4] = address(create.new_address)
            staticcall address(cd[228]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(create.new_address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _632 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _643 = mem[_632]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = cd[4] + (cd[4] * cd[36] / 100)
            call address(cd[228]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), cd[4] + (cd[4] * cd[36] / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_661] == bool(mem[_661])
            mem[mem[64] + 36] = address(create.new_address)
            require ext_code.size(factoryManagerAddress)
            call factoryManagerAddress.0x59cebe14 with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(create.new_address)
            staticcall address(cd[228]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(create.new_address)
            mem[mem[64]] = ext_call.return_data[0]
            _697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_697] < _643:
                revert with 0, 17
            if mem[_697] - _643 != cd[4] + (cd[4] * cd[36] / 100):
                revert with 0, 'Please exclude fee the owner!'
    else:
        if eth.balance(this.address) < msg.value - flatFee:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value msg.value - flatFee wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) < flatFee:
                revert with 0, 'Address: insufficient balance'
            call feeToAddress with:
               value flatFee wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                mem[mem[64] + 4] = address(cd[68])
                staticcall factoryManagerAddress.0xc226c4bb with:
                        gas gas_remaining wei
                       args address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                _346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_346] == bool(mem[_346])
                if not mem[_346]:
                    revert with 0, 'Not allowed router'
                create contract with 0 wei
                                code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
                if not address(create.new_address):
                    revert with 0, 'ERC1167: create failed'
                if cd[4] and cd[36] > -1 / cd[4]:
                    revert with 0, 17
                if cd[4] > !(cd[4] * cd[36] / 100):
                    revert with 0, 17
                _394 = mem[64]
                mem[mem[64]] = 0x35397c6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[4]
                mem[mem[64] + 100] = cd[36]
                mem[mem[64] + 132] = address(cd[68])
                mem[mem[64] + 164] = cd[100]
                mem[mem[64] + 196] = cd[132]
                mem[mem[64] + 228] = cd[164]
                mem[mem[64] + 260] = cd[196]
                mem[mem[64] + 292] = address(cd[228])
                mem[mem[64] + 324] = 352
                _400 = mem[96]
                mem[mem[64] + 356] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 388
                u = mem[64] + (32 * mem[96]) + 388
                while idx < _400:
                    mem[t] = u + -_394 - 388
                    _568 = mem[s]
                    _569 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _569:
                        mem[v + u + 32] = mem[v + _568 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_569) > _569:
                        mem[u + _569 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_569) + u + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                _602 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_602] < cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Balance invalid.'
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _644 = mem[_634]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = cd[4] + (cd[4] * cd[36] / 100)
                call address(cd[228]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), cd[4] + (cd[4] * cd[36] / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_662] == bool(mem[_662])
                mem[mem[64] + 36] = address(create.new_address)
                require ext_code.size(factoryManagerAddress)
                call factoryManagerAddress.0x59cebe14 with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                _698 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_698] < _644:
                    revert with 0, 17
                if mem[_698] - _644 != cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Please exclude fee the owner!'
            else:
                _320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_320] = return_data.size
                mem[_320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                mem[mem[64] + 4] = address(cd[68])
                staticcall factoryManagerAddress.0xc226c4bb with:
                        gas gas_remaining wei
                       args address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                _347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_347] == bool(mem[_347])
                if not mem[_347]:
                    revert with 0, 'Not allowed router'
                create contract with 0 wei
                                code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
                if not address(create.new_address):
                    revert with 0, 'ERC1167: create failed'
                if cd[4] and cd[36] > -1 / cd[4]:
                    revert with 0, 17
                if cd[4] > !(cd[4] * cd[36] / 100):
                    revert with 0, 17
                _395 = mem[64]
                mem[mem[64]] = 0x35397c6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[4]
                mem[mem[64] + 100] = cd[36]
                mem[mem[64] + 132] = address(cd[68])
                mem[mem[64] + 164] = cd[100]
                mem[mem[64] + 196] = cd[132]
                mem[mem[64] + 228] = cd[164]
                mem[mem[64] + 260] = cd[196]
                mem[mem[64] + 292] = address(cd[228])
                mem[mem[64] + 324] = 352
                _401 = mem[96]
                mem[mem[64] + 356] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 388
                u = mem[64] + (32 * mem[96]) + 388
                while idx < _401:
                    mem[t] = u + -_395 - 388
                    _570 = mem[s]
                    _571 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _571:
                        mem[v + u + 32] = mem[v + _570 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_571) > _571:
                        mem[u + _571 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_571) + u + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                _603 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_603] < cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Balance invalid.'
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _645 = mem[_636]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = cd[4] + (cd[4] * cd[36] / 100)
                call address(cd[228]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), cd[4] + (cd[4] * cd[36] / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_663] == bool(mem[_663])
                mem[mem[64] + 36] = address(create.new_address)
                require ext_code.size(factoryManagerAddress)
                call factoryManagerAddress.0x59cebe14 with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                _699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_699] < _645:
                    revert with 0, 17
                if mem[_699] - _645 != cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Please exclude fee the owner!'
        else:
            _294 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_294] = return_data.size
            mem[_294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) < flatFee:
                revert with 0, 'Address: insufficient balance'
            call feeToAddress with:
               value flatFee wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                mem[mem[64] + 4] = address(cd[68])
                staticcall factoryManagerAddress.0xc226c4bb with:
                        gas gas_remaining wei
                       args address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                _348 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_348] == bool(mem[_348])
                if not mem[_348]:
                    revert with 0, 'Not allowed router'
                create contract with 0 wei
                                code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
                if not address(create.new_address):
                    revert with 0, 'ERC1167: create failed'
                if cd[4] and cd[36] > -1 / cd[4]:
                    revert with 0, 17
                if cd[4] > !(cd[4] * cd[36] / 100):
                    revert with 0, 17
                _396 = mem[64]
                mem[mem[64]] = 0x35397c6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[4]
                mem[mem[64] + 100] = cd[36]
                mem[mem[64] + 132] = address(cd[68])
                mem[mem[64] + 164] = cd[100]
                mem[mem[64] + 196] = cd[132]
                mem[mem[64] + 228] = cd[164]
                mem[mem[64] + 260] = cd[196]
                mem[mem[64] + 292] = address(cd[228])
                mem[mem[64] + 324] = 352
                _402 = mem[96]
                mem[mem[64] + 356] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 388
                u = mem[64] + (32 * mem[96]) + 388
                while idx < _402:
                    mem[t] = u + -_396 - 388
                    _572 = mem[s]
                    _573 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _573:
                        mem[v + u + 32] = mem[v + _572 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_573) > _573:
                        mem[u + _573 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_573) + u + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                _604 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_604] < cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Balance invalid.'
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _638 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _646 = mem[_638]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = cd[4] + (cd[4] * cd[36] / 100)
                call address(cd[228]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), cd[4] + (cd[4] * cd[36] / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _664 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_664] == bool(mem[_664])
                mem[mem[64] + 36] = address(create.new_address)
                require ext_code.size(factoryManagerAddress)
                call factoryManagerAddress.0x59cebe14 with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                _700 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_700] < _646:
                    revert with 0, 17
                if mem[_700] - _646 != cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Please exclude fee the owner!'
            else:
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_322] = return_data.size
                mem[_322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                mem[mem[64] + 4] = address(cd[68])
                staticcall factoryManagerAddress.0xc226c4bb with:
                        gas gas_remaining wei
                       args address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                _349 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_349] == bool(mem[_349])
                if not mem[_349]:
                    revert with 0, 'Not allowed router'
                create contract with 0 wei
                                code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, implementationAddress, 0x5af43d82803e903d91602b57fd5bf3
                if not address(create.new_address):
                    revert with 0, 'ERC1167: create failed'
                if cd[4] and cd[36] > -1 / cd[4]:
                    revert with 0, 17
                if cd[4] > !(cd[4] * cd[36] / 100):
                    revert with 0, 17
                _397 = mem[64]
                mem[mem[64]] = 0x35397c6800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = cd[4]
                mem[mem[64] + 100] = cd[36]
                mem[mem[64] + 132] = address(cd[68])
                mem[mem[64] + 164] = cd[100]
                mem[mem[64] + 196] = cd[132]
                mem[mem[64] + 228] = cd[164]
                mem[mem[64] + 260] = cd[196]
                mem[mem[64] + 292] = address(cd[228])
                mem[mem[64] + 324] = 352
                _403 = mem[96]
                mem[mem[64] + 356] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 388
                u = mem[64] + (32 * mem[96]) + 388
                while idx < _403:
                    mem[t] = u + -_397 - 388
                    _574 = mem[s]
                    _575 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _575:
                        mem[v + u + 32] = mem[v + _574 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_575) > _575:
                        mem[u + _575 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_575) + u + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_605] < cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Balance invalid.'
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _640 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _647 = mem[_640]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = cd[4] + (cd[4] * cd[36] / 100)
                call address(cd[228]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), cd[4] + (cd[4] * cd[36] / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_665] == bool(mem[_665])
                mem[mem[64] + 36] = address(create.new_address)
                require ext_code.size(factoryManagerAddress)
                call factoryManagerAddress.0x59cebe14 with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = address(create.new_address)
                staticcall address(cd[228]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(create.new_address)
                mem[mem[64]] = ext_call.return_data[0]
                _701 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_701] < _647:
                    revert with 0, 17
                if mem[_701] - _647 != cd[4] + (cd[4] * cd[36] / 100):
                    revert with 0, 'Please exclude fee the owner!'
    emit PoolCreated(msg.sender, address(create.new_address));
    stor3 = 1
    return address(create.new_address)
}



}
