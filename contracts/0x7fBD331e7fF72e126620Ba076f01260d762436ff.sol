contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address sub_82317ce0Address;
mapping of uint256 balance;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function sub_82317ce0(?) payable {
    return sub_82317ce0Address
}

function owner() payable {
    return owner
}

function router() payable {
    return routerAddress
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    routerAddress = arg1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, '!amount'
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x39fadb91 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(routerAddress)
        staticcall routerAddress.0xf6d1c271 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _101 = mem[_99]
        require mem[_99] == mem[_99 + 12 len 20]
        mem[mem[64] + 4] = mem[_99 + 12 len 20]
        require ext_code.size(routerAddress)
        staticcall routerAddress.0x4d1cc0d3 with:
                gas gas_remaining wei
               args address(_101)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_108]
        require mem[_108] == mem[_108 + 12 len 20]
        mem[mem[64]] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_109))
        call address(_109).updateRewards(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    mem[0] = msg.sender
    mem[32] = 3
    if balance[msg.sender] > !arg1:
        revert with 0, 17
    balance[msg.sender] += arg1
    _102 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = arg1
    _105 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_102 + 132] = 32
    mem[_102 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_82317ce0Address):
        revert with 0, 'Address: call to non-contract'
    _114 = mem[_105]
    mem[_102 + 196 len ceil32(mem[_105])] = mem[_105 + 32 len ceil32(mem[_105])]
    if ceil32(_114) > _114:
        mem[_114 + _102 + 196] = 0
    call sub_82317ce0Address with:
         gas gas_remaining wei
        args mem[_102 + 200 len _114 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_102 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_102 + 228] == bool(mem[_102 + 228])
            if not mem[_102 + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x45361c4b: arg1, msg.sender
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, '!amount'
    mem[0] = msg.sender
    mem[32] = 3
    if arg1 < balance[msg.sender]:
        require ext_code.size(routerAddress)
        staticcall routerAddress.0x39fadb91 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(routerAddress)
            staticcall routerAddress.0xf6d1c271 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _200 = mem[_197]
            require mem[_197] == mem[_197 + 12 len 20]
            mem[mem[64] + 4] = mem[_197 + 12 len 20]
            require ext_code.size(routerAddress)
            staticcall routerAddress.0x4d1cc0d3 with:
                    gas gas_remaining wei
                   args address(_200)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _217 = mem[_214]
            require mem[_214] == mem[_214 + 12 len 20]
            mem[mem[64]] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_217))
            call address(_217).updateRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        mem[0] = msg.sender
        mem[32] = 3
        if balance[msg.sender] < arg1:
            revert with 0, 17
        balance[msg.sender] -= arg1
        _203 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = arg1
        _209 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_203 + 100] = 32
        mem[_203 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_82317ce0Address):
            revert with 0, 'Address: call to non-contract'
        _227 = mem[_209]
        mem[_203 + 164 len ceil32(mem[_209])] = mem[_209 + 32 len ceil32(mem[_209])]
        if ceil32(_227) > _227:
            mem[_227 + _203 + 164] = 0
        call sub_82317ce0Address with:
             gas gas_remaining wei
            args mem[_203 + 168 len _227 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_203 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_203 + 196] == bool(mem[_203 + 196])
                if not mem[_203 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x1c9665c2: arg1, msg.sender
    else:
        mem[0] = msg.sender
        mem[32] = 3
        require ext_code.size(routerAddress)
        staticcall routerAddress.0x39fadb91 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(routerAddress)
            staticcall routerAddress.0xf6d1c271 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _202 = mem[_198]
            require mem[_198] == mem[_198 + 12 len 20]
            mem[mem[64] + 4] = mem[_198 + 12 len 20]
            require ext_code.size(routerAddress)
            staticcall routerAddress.0x4d1cc0d3 with:
                    gas gas_remaining wei
                   args address(_202)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _218 = mem[_216]
            require mem[_216] == mem[_216 + 12 len 20]
            mem[mem[64]] = 0x5fd6196500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_218))
            call address(_218).updateRewards(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if totalSupply < balance[msg.sender]:
            revert with 0, 17
        totalSupply -= balance[msg.sender]
        mem[0] = msg.sender
        mem[32] = 3
        if balance[msg.sender] < balance[msg.sender]:
            revert with 0, 17
        balance[msg.sender] = 0
        _206 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = balance[msg.sender]
        _211 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_206 + 100] = 32
        mem[_206 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_82317ce0Address):
            revert with 0, 'Address: call to non-contract'
        _229 = mem[_211]
        mem[_206 + 164 len ceil32(mem[_211])] = mem[_211 + 32 len ceil32(mem[_211])]
        if ceil32(_229) > _229:
            mem[_229 + _206 + 164] = 0
        call sub_82317ce0Address with:
             gas gas_remaining wei
            args mem[_206 + 168 len _229 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_206 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_206 + 196] == bool(mem[_206 + 196])
                if not mem[_206 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x1c9665c2: balance[msg.sender], msg.sender
}



}
