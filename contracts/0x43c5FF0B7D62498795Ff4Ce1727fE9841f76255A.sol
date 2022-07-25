contract main {




// =====================  Runtime code  =====================


#
#  - sub_179184c8(?)
#
address owner;
address sub_a296454fAddress;
array of struct rewards;
mapping of uint8 stor3;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403024;

function owner() payable {
    return owner
}

function sub_a296454f(?) payable {
    return sub_a296454fAddress
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewards.length
    return rewards[arg1].field_0, rewards[arg1].field_256, rewards[arg1].field_512, bool(rewards[arg1].field_672)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6ebeb063(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(bool(arg2))
}

function sub_40a6a589(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= rewards.length:
        revert with 0, 'Invalid index'
    rewards[arg1].field_512 = address(arg2)
}

function sub_f200df40(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= rewards.length:
        revert with 0, 'Invalid index'
    rewards[arg1].field_256 = address(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_8770b93d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewards.length++
    rewards[rewards.length].field_0 = address(arg1)
    stor4057[stor2.length] = address(arg2)
    stor4057[stor2.length].field_0 = address(arg3)
    stor4057[stor2.length].field_160 = Mask(96, 0, bool(arg4))
}

function sub_378eb167(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if rewards.length > test266151307():
        revert with 0, 65
    mem[96] = rewards.length
    mem[64] = (32 * rewards.length) + 128
    if not rewards.length:
        idx = 0
        while idx < rewards.length:
            mem[0] = 2
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(rewards[idx].field_0)
            staticcall rewards[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1582 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_1582]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x17e5483000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = ('cd', 4).length
        idx = 0
        s = mem[64] + 100
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(sub_a296454fAddress)
        call sub_a296454fAddress.0x17e54830 with:
             gas gas_remaining wei
            args Array(len=('cd', 4).length, data=mem[mem[64] + 100 len 32 * ('cd', 4).length]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < rewards.length:
            mem[0] = 2
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(rewards[idx].field_0)
            staticcall rewards[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4714 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4716 = mem[_4714]
            if idx >= mem[96]:
                revert with 0, 50
            _4720 = mem[(32 * idx) + 128]
            if mem[_4714] < mem[(32 * idx) + 128]:
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(rewards[idx].field_0)
            staticcall rewards[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4726 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4728 = mem[_4726]
            if _4716 - _4720 > !mem[_4726]:
                revert with 0, 17
            if _4716 - _4720 + mem[_4726] > 0:
                if not _4716 - _4720:
                    if _4716 - _4720 > !mem[_4726]:
                        revert with 0, 17
                    if not rewards[idx].field_512:
                        if rewards[idx].field_256:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = rewards[idx].field_256
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, rewards[idx].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4756] < _4716 - _4720 + _4728:
                                mem[mem[64] + 4] = rewards[idx].field_256
                                mem[mem[64] + 36] = -1
                                require ext_code.size(rewards[idx].field_0)
                                call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args rewards[idx].field_256, -1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4784] == bool(mem[_4784])
                            mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4716 - _4720 + _4728
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(rewards[idx].field_256)
                            call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                 gas gas_remaining wei
                                args _4716 - _4720 + _4728, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = rewards[idx].field_512
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, rewards[idx].field_512
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4748 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4748] >= _4716 - _4720 + _4728:
                            if idx >= rewards.length:
                                revert with 0, 50
                            mem[0] = 2
                            if not rewards[idx].field_672:
                                mem[mem[64]] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4716 - _4720 + _4728
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.deposit(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_4716 - _4720 + _4728)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4848 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4848] < _4716 - _4720 + _4728:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4932 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4932] == bool(mem[_4932])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4716 - _4720 + _4728
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4716 - _4720 + _4728
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4716 - _4720 + _4728, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4849 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4849] < _4716 - _4720 + _4728:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4933 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4933] == bool(mem[_4933])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4716 - _4720 + _4728
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64] + 4] = rewards[idx].field_512
                            mem[mem[64] + 36] = -1
                            require ext_code.size(rewards[idx].field_0)
                            call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args rewards[idx].field_512, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4779 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4779] == bool(mem[_4779])
                            if idx >= rewards.length:
                                revert with 0, 50
                            mem[0] = 2
                            if not rewards[idx].field_672:
                                mem[mem[64]] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4716 - _4720 + _4728
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.deposit(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_4716 - _4720 + _4728)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4946 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4946] < _4716 - _4720 + _4728:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5044 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5044] == bool(mem[_5044])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4716 - _4720 + _4728
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4716 - _4720 + _4728
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4716 - _4720 + _4728, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4947 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4947] < _4716 - _4720 + _4728:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5045 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5045] == bool(mem[_5045])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4716 - _4720 + _4728
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _4730 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _4716 - _4720
                    _4732 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_4732 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4732 + 36 len 28]
                    mem[64] = _4730 + 196
                    mem[_4730 + 132] = 32
                    mem[_4730 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewards[idx].field_0):
                        revert with 0, 'Address: call to non-contract'
                    _4757 = mem[_4732]
                    s = 0
                    while s < _4757:
                        mem[s + _4730 + 196] = mem[s + _4732 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4757) > _4757:
                        mem[_4757 + _4730 + 196] = 0
                    call rewards[idx].field_0.mem[_4730 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_4730 + 200 len _4757 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_4730 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4730 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4730 + 264] = mem[idx + _4730 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_4730 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if _4716 - _4720 > !_4728:
                            revert with 0, 17
                        if not rewards[idx].field_512:
                            if rewards[idx].field_256:
                                mem[_4730 + 200] = this.address
                                mem[_4730 + 232] = rewards[idx].field_256
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, rewards[idx].field_256
                                mem[_4730 + 196] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4730 + ceil32(return_data.size) + 196
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                    mem[_4730 + ceil32(return_data.size) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + 200] = _4716 - _4720 + _4728
                                    mem[_4730 + ceil32(return_data.size) + 232] = msg.sender
                                else:
                                    mem[_4730 + ceil32(return_data.size) + 200] = rewards[idx].field_256
                                    mem[_4730 + ceil32(return_data.size) + 232] = -1
                                    require ext_code.size(rewards[idx].field_0)
                                    call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args rewards[idx].field_256, -1
                                    mem[_4730 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4730 + (2 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 200] = _4716 - _4720 + _4728
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 232] = msg.sender
                                require ext_code.size(rewards[idx].field_256)
                                call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4716 - _4720 + _4728, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_4730 + 200] = this.address
                            mem[_4730 + 232] = rewards[idx].field_512
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, rewards[idx].field_512
                            mem[_4730 + 196] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4730 + ceil32(return_data.size) + 196
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4730 + ceil32(return_data.size) + 196] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + 200] = _4716 - _4720 + _4728
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4716 - _4720 + _4728)
                                else:
                                    mem[_4730 + ceil32(return_data.size) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + 200] = _4716 - _4720 + _4728
                                    mem[_4730 + ceil32(return_data.size) + 232] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4730 + ceil32(return_data.size) + 200] = this.address
                                    mem[_4730 + ceil32(return_data.size) + 232] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4730 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4730 + (2 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                        mem[_4730 + (2 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + (2 * ceil32(return_data.size)) + 200] = _4716 - _4720 + _4728
                                        mem[_4730 + (2 * ceil32(return_data.size)) + 232] = msg.sender
                                    else:
                                        mem[_4730 + (2 * ceil32(return_data.size)) + 200] = rewards[idx].field_256
                                        mem[_4730 + (2 * ceil32(return_data.size)) + 232] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4730 + (2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4730 + (4 * ceil32(return_data.size)) + 196
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 200] = _4716 - _4720 + _4728
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 232] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4730 + ceil32(return_data.size) + 200] = rewards[idx].field_512
                                mem[_4730 + ceil32(return_data.size) + 232] = -1
                                require ext_code.size(rewards[idx].field_0)
                                call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args rewards[idx].field_512, -1
                                mem[_4730 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4730 + (2 * ceil32(return_data.size)) + 196
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 196] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 200] = _4716 - _4720 + _4728
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4716 - _4720 + _4728)
                                else:
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 200] = _4716 - _4720 + _4728
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 232] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 200] = this.address
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 232] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4730 + (2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4730 + (4 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 200] = _4716 - _4720 + _4728
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 232] = msg.sender
                                    else:
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 200] = rewards[idx].field_256
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 232] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4730 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4730 + (6 * ceil32(return_data.size)) + 196
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4730 + (6 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + (6 * ceil32(return_data.size)) + 200] = _4716 - _4720 + _4728
                                        mem[_4730 + (6 * ceil32(return_data.size)) + 232] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[64] = _4730 + ceil32(return_data.size) + 197
                        mem[_4730 + 196] = return_data.size
                        mem[_4730 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_4730 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4730 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4730 + ceil32(return_data.size) + 265] = mem[idx + _4730 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_4730 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4730 + 228] == bool(mem[_4730 + 228])
                            if not mem[_4730 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if _4716 - _4720 > !_4728:
                            revert with 0, 17
                        if not rewards[idx].field_512:
                            if rewards[idx].field_256:
                                mem[_4730 + ceil32(return_data.size) + 201] = this.address
                                mem[_4730 + ceil32(return_data.size) + 233] = rewards[idx].field_256
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, rewards[idx].field_256
                                mem[_4730 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = _4716 - _4720 + _4728
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = msg.sender
                                else:
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = rewards[idx].field_256
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                                    require ext_code.size(rewards[idx].field_0)
                                    call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args rewards[idx].field_256, -1
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4716 - _4720 + _4728
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = msg.sender
                                require ext_code.size(rewards[idx].field_256)
                                call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4716 - _4720 + _4728, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_4730 + ceil32(return_data.size) + 201] = this.address
                            mem[_4730 + ceil32(return_data.size) + 233] = rewards[idx].field_512
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, rewards[idx].field_512
                            mem[_4730 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = _4716 - _4720 + _4728
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4716 - _4720 + _4728)
                                else:
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = _4716 - _4720 + _4728
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = this.address
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                        mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4716 - _4720 + _4728
                                        mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = msg.sender
                                    else:
                                        mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = rewards[idx].field_256
                                        mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = _4716 - _4720 + _4728
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = rewards[idx].field_512
                                mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                                require ext_code.size(rewards[idx].field_0)
                                call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args rewards[idx].field_512, -1
                                mem[_4730 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4716 - _4720 + _4728
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4716 - _4720 + _4728)
                                else:
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4716 - _4720 + _4728
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = this.address
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4730 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4716 - _4720 + _4728:
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = _4716 - _4720 + _4728
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = msg.sender
                                    else:
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = rewards[idx].field_256
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4730 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4730 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4730 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4730 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = _4716 - _4720 + _4728
                                        mem[_4730 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 233] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4716 - _4720 + _4728, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * rewards.length] = call.data[calldata.size len 32 * rewards.length]
        idx = 0
        while idx < rewards.length:
            mem[0] = 2
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(rewards[idx].field_0)
            staticcall rewards[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1583 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_1583]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x17e5483000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = ('cd', 4).length
        idx = 0
        s = mem[64] + 100
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(sub_a296454fAddress)
        call sub_a296454fAddress.0x17e54830 with:
             gas gas_remaining wei
            args Array(len=('cd', 4).length, data=mem[mem[64] + 100 len 32 * ('cd', 4).length]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < rewards.length:
            mem[0] = 2
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(rewards[idx].field_0)
            staticcall rewards[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4715 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4717 = mem[_4715]
            if idx >= mem[96]:
                revert with 0, 50
            _4721 = mem[(32 * idx) + 128]
            if mem[_4715] < mem[(32 * idx) + 128]:
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(rewards[idx].field_0)
            staticcall rewards[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4727 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4729 = mem[_4727]
            if _4717 - _4721 > !mem[_4727]:
                revert with 0, 17
            if _4717 - _4721 + mem[_4727] > 0:
                if not _4717 - _4721:
                    if _4717 - _4721 > !mem[_4727]:
                        revert with 0, 17
                    if not rewards[idx].field_512:
                        if rewards[idx].field_256:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = rewards[idx].field_256
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, rewards[idx].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4759 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4759] < _4717 - _4721 + _4729:
                                mem[mem[64] + 4] = rewards[idx].field_256
                                mem[mem[64] + 36] = -1
                                require ext_code.size(rewards[idx].field_0)
                                call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args rewards[idx].field_256, -1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4791 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4791] == bool(mem[_4791])
                            mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4717 - _4721 + _4729
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(rewards[idx].field_256)
                            call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                 gas gas_remaining wei
                                args _4717 - _4721 + _4729, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = rewards[idx].field_512
                        require ext_code.size(rewards[idx].field_0)
                        staticcall rewards[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, rewards[idx].field_512
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4752 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4752] >= _4717 - _4721 + _4729:
                            if idx >= rewards.length:
                                revert with 0, 50
                            mem[0] = 2
                            if not rewards[idx].field_672:
                                mem[mem[64]] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4717 - _4721 + _4729
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.deposit(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_4717 - _4721 + _4729)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4853 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4853] < _4717 - _4721 + _4729:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4938 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4938] == bool(mem[_4938])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4717 - _4721 + _4729
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4717 - _4721 + _4729
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4717 - _4721 + _4729, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4854 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4854] < _4717 - _4721 + _4729:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4939 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4939] == bool(mem[_4939])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4717 - _4721 + _4729
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64] + 4] = rewards[idx].field_512
                            mem[mem[64] + 36] = -1
                            require ext_code.size(rewards[idx].field_0)
                            call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args rewards[idx].field_512, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4783 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4783] == bool(mem[_4783])
                            if idx >= rewards.length:
                                revert with 0, 50
                            mem[0] = 2
                            if not rewards[idx].field_672:
                                mem[mem[64]] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4717 - _4721 + _4729
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.deposit(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_4717 - _4721 + _4729)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4950 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4950] < _4717 - _4721 + _4729:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5050 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5050] == bool(mem[_5050])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4717 - _4721 + _4729
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4717 - _4721 + _4729
                                mem[mem[64] + 36] = this.address
                                require ext_code.size(rewards[idx].field_512)
                                call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4717 - _4721 + _4729, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4951 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4951] < _4717 - _4721 + _4729:
                                        mem[mem[64] + 4] = rewards[idx].field_256
                                        mem[mem[64] + 36] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5051 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5051] == bool(mem[_5051])
                                    mem[mem[64]] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4717 - _4721 + _4729
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    _4731 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _4717 - _4721
                    _4734 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_4734 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_4734 + 36 len 28]
                    mem[64] = _4731 + 196
                    mem[_4731 + 132] = 32
                    mem[_4731 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewards[idx].field_0):
                        revert with 0, 'Address: call to non-contract'
                    _4760 = mem[_4734]
                    s = 0
                    while s < _4760:
                        mem[s + _4731 + 196] = mem[s + _4734 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4760) > _4760:
                        mem[_4760 + _4731 + 196] = 0
                    call rewards[idx].field_0.mem[_4731 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_4731 + 200 len _4760 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_4731 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4731 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4731 + 264] = mem[idx + _4731 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_4731 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if _4717 - _4721 > !_4729:
                            revert with 0, 17
                        if not rewards[idx].field_512:
                            if rewards[idx].field_256:
                                mem[_4731 + 200] = this.address
                                mem[_4731 + 232] = rewards[idx].field_256
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, rewards[idx].field_256
                                mem[_4731 + 196] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4731 + ceil32(return_data.size) + 196
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                    mem[_4731 + ceil32(return_data.size) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + 200] = _4717 - _4721 + _4729
                                    mem[_4731 + ceil32(return_data.size) + 232] = msg.sender
                                else:
                                    mem[_4731 + ceil32(return_data.size) + 200] = rewards[idx].field_256
                                    mem[_4731 + ceil32(return_data.size) + 232] = -1
                                    require ext_code.size(rewards[idx].field_0)
                                    call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args rewards[idx].field_256, -1
                                    mem[_4731 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4731 + (2 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 200] = _4717 - _4721 + _4729
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 232] = msg.sender
                                require ext_code.size(rewards[idx].field_256)
                                call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4717 - _4721 + _4729, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_4731 + 200] = this.address
                            mem[_4731 + 232] = rewards[idx].field_512
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, rewards[idx].field_512
                            mem[_4731 + 196] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4731 + ceil32(return_data.size) + 196
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4731 + ceil32(return_data.size) + 196] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + 200] = _4717 - _4721 + _4729
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4717 - _4721 + _4729)
                                else:
                                    mem[_4731 + ceil32(return_data.size) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + 200] = _4717 - _4721 + _4729
                                    mem[_4731 + ceil32(return_data.size) + 232] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4731 + ceil32(return_data.size) + 200] = this.address
                                    mem[_4731 + ceil32(return_data.size) + 232] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4731 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4731 + (2 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                        mem[_4731 + (2 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + (2 * ceil32(return_data.size)) + 200] = _4717 - _4721 + _4729
                                        mem[_4731 + (2 * ceil32(return_data.size)) + 232] = msg.sender
                                    else:
                                        mem[_4731 + (2 * ceil32(return_data.size)) + 200] = rewards[idx].field_256
                                        mem[_4731 + (2 * ceil32(return_data.size)) + 232] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4731 + (2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4731 + (4 * ceil32(return_data.size)) + 196
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 200] = _4717 - _4721 + _4729
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 232] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4731 + ceil32(return_data.size) + 200] = rewards[idx].field_512
                                mem[_4731 + ceil32(return_data.size) + 232] = -1
                                require ext_code.size(rewards[idx].field_0)
                                call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args rewards[idx].field_512, -1
                                mem[_4731 + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4731 + (2 * ceil32(return_data.size)) + 196
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 196] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 200] = _4717 - _4721 + _4729
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4717 - _4721 + _4729)
                                else:
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 200] = _4717 - _4721 + _4729
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 232] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 200] = this.address
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 232] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4731 + (2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4731 + (4 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 200] = _4717 - _4721 + _4729
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 232] = msg.sender
                                    else:
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 200] = rewards[idx].field_256
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 232] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4731 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4731 + (6 * ceil32(return_data.size)) + 196
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4731 + (6 * ceil32(return_data.size)) + 196] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + (6 * ceil32(return_data.size)) + 200] = _4717 - _4721 + _4729
                                        mem[_4731 + (6 * ceil32(return_data.size)) + 232] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[64] = _4731 + ceil32(return_data.size) + 197
                        mem[_4731 + 196] = return_data.size
                        mem[_4731 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_4731 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4731 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _4731 + ceil32(return_data.size) + 265] = mem[idx + _4731 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_4731 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4731 + 228] == bool(mem[_4731 + 228])
                            if not mem[_4731 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if _4717 - _4721 > !_4729:
                            revert with 0, 17
                        if not rewards[idx].field_512:
                            if rewards[idx].field_256:
                                mem[_4731 + ceil32(return_data.size) + 201] = this.address
                                mem[_4731 + ceil32(return_data.size) + 233] = rewards[idx].field_256
                                require ext_code.size(rewards[idx].field_0)
                                staticcall rewards[idx].field_0.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, rewards[idx].field_256
                                mem[_4731 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = _4717 - _4721 + _4729
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = msg.sender
                                else:
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = rewards[idx].field_256
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                                    require ext_code.size(rewards[idx].field_0)
                                    call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args rewards[idx].field_256, -1
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4717 - _4721 + _4729
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = msg.sender
                                require ext_code.size(rewards[idx].field_256)
                                call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args _4717 - _4721 + _4729, msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_4731 + ceil32(return_data.size) + 201] = this.address
                            mem[_4731 + ceil32(return_data.size) + 233] = rewards[idx].field_512
                            require ext_code.size(rewards[idx].field_0)
                            staticcall rewards[idx].field_0.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, rewards[idx].field_512
                            mem[_4731 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = _4717 - _4721 + _4729
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4717 - _4721 + _4729)
                                else:
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = _4717 - _4721 + _4729
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = this.address
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                        mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4717 - _4721 + _4729
                                        mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = msg.sender
                                    else:
                                        mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = rewards[idx].field_256
                                        mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = _4717 - _4721 + _4729
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = rewards[idx].field_512
                                mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                                require ext_code.size(rewards[idx].field_0)
                                call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args rewards[idx].field_512, -1
                                mem[_4731 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx >= rewards.length:
                                    revert with 0, 50
                                mem[0] = 2
                                if not rewards[idx].field_672:
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4717 - _4721 + _4729
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.deposit(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_4717 - _4721 + _4729)
                                else:
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = _4717 - _4721 + _4729
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = this.address
                                    require ext_code.size(rewards[idx].field_512)
                                    call rewards[idx].field_512.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if rewards[idx].field_256:
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = this.address
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = rewards[idx].field_256
                                    require ext_code.size(rewards[idx].field_0)
                                    staticcall rewards[idx].field_0.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, rewards[idx].field_256
                                    mem[_4731 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= _4717 - _4721 + _4729:
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = _4717 - _4721 + _4729
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = msg.sender
                                    else:
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = rewards[idx].field_256
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = -1
                                        require ext_code.size(rewards[idx].field_0)
                                        call rewards[idx].field_0.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args rewards[idx].field_256, -1
                                        mem[_4731 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _4731 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[_4731 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197] = 0x36efd16f00000000000000000000000000000000000000000000000000000000
                                        mem[_4731 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = _4717 - _4721 + _4729
                                        mem[_4731 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 233] = msg.sender
                                    require ext_code.size(rewards[idx].field_256)
                                    call rewards[idx].field_256.depositFor(uint256 arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args _4717 - _4721 + _4729, msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
