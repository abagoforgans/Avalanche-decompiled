contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint32 stor2;
address treasuryAddress;
uint256 stor2;
array of struct sub_71ea2f93;

function treasury() payable {
    return address(treasuryAddress)
}

function sub_71ea2f93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_71ea2f93.length
    return sub_71ea2f93[arg1].field_0, 
           sub_71ea2f93[arg1].field_256,
           sub_71ea2f93[arg1].field_512,
           sub_71ea2f93[arg1].field_768,
           sub_71ea2f93[arg1].field_1024,
           sub_71ea2f93[arg1].field_1280
}

function owner() payable {
    return owner
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

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid address'
    address(treasuryAddress) = arg1
    emit ChangeTreasury(address(treasuryAddress), arg1);
}

function sub_5f69df23(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'invalid amount'
    if arg1 >= sub_71ea2f93.length:
        revert with 0, 'invalid index'
    sub_71ea2f93[arg1].field_768 = arg2
    emit 0x32a790b2 
}

function sub_4272c2ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'invalid period'
    if arg1 >= sub_71ea2f93.length:
        revert with 0, 'invalid index'
    sub_71ea2f93[arg1].field_1024 = arg2
    emit 0x32a790b2 
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

function sub_9992d824(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'invalid amount'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xf7c618c1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[96] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xa341ec0a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_71ea2f93.length++
    sub_71ea2f93[sub_71ea2f93.length].field_0 = mem[108 len 20]
    sub_71ea2f93[sub_71ea2f93.length].field_256 = address(treasuryAddress)
    sub_71ea2f93[sub_71ea2f93.length].field_512 = address(arg1)
    sub_71ea2f93[sub_71ea2f93.length].field_768 = arg2
    sub_71ea2f93[sub_71ea2f93.length].field_1024 = ext_call.return_data[0]
    sub_71ea2f93[sub_71ea2f93.length].field_1280 = block.timestamp
    emit 0x32a790b2 
}

function sub_10ddccf7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_71ea2f93.length:
        revert with 0, 'invalid index'
    if sub_71ea2f93.length < 1:
        revert with 'NH{q', 17
    if arg1 < sub_71ea2f93.length - 1:
        if sub_71ea2f93.length - 1 >= sub_71ea2f93.length:
            revert with 'NH{q', 50
        if arg1 >= sub_71ea2f93.length:
            revert with 'NH{q', 50
        sub_71ea2f93[arg1].field_0 = sub_71ea2f93[sub_71ea2f93.length].field_0
        sub_71ea2f93[arg1].field_256 = sub_71ea2f93[sub_71ea2f93.length].field_0
        sub_71ea2f93[arg1].field_512 = sub_71ea2f93[sub_71ea2f93.length].field_0
        sub_71ea2f93[arg1].field_768 = sub_71ea2f93[sub_71ea2f93.length].field_0
        sub_71ea2f93[arg1].field_1024 = sub_71ea2f93[sub_71ea2f93.length].field_0
        sub_71ea2f93[arg1].field_1280 = sub_71ea2f93[sub_71ea2f93.length].field_0
    if not sub_71ea2f93.length:
        revert with 'NH{q', 49
    sub_71ea2f93[sub_71ea2f93.length].field_0 = 0
    sub_71ea2f93[sub_71ea2f93.length].field_0 = 0
    sub_71ea2f93[sub_71ea2f93.length].field_0 = 0
    sub_71ea2f93[sub_71ea2f93.length].field_0 = 0
    sub_71ea2f93[sub_71ea2f93.length].field_0 = 0
    sub_71ea2f93[sub_71ea2f93.length].field_0 = 0
    sub_71ea2f93.length--
    emit 0x32a790b2 
}

function sub_7ea56ebb(?) payable {
    mem[64] = 96
    idx = 0
    while idx < sub_71ea2f93.length:
        mem[0] = 3
        if block.timestamp >= sub_71ea2f93[idx].field_1280:
            mem[mem[64] + 4] = sub_71ea2f93[idx].field_256
            require ext_code.size(sub_71ea2f93[idx].field_0)
            staticcall sub_71ea2f93[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_71ea2f93[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22 = mem[_21]
            require mem[_21] == mem[_21]
            mem[mem[64] + 4] = sub_71ea2f93[idx].field_256
            mem[mem[64] + 36] = this.address
            require ext_code.size(sub_71ea2f93[idx].field_0)
            staticcall sub_71ea2f93[idx].field_0.0xdd62ed3e with:
                    gas gas_remaining wei
                   args sub_71ea2f93[idx].field_256, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_25] == mem[_25]
            if _22 < mem[_25]:
                if _22 < sub_71ea2f93[idx].field_768:
                    return 1
            else:
                if mem[_25] < sub_71ea2f93[idx].field_768:
                    return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function recoverLostFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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
    mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0) << 288)
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
    stor1 = 1
}

function unallocated() payable {
    mem[64] = 96
    idx = 0
    while idx < sub_71ea2f93.length:
        mem[0] = 3
        if block.timestamp < sub_71ea2f93[idx].field_1280:
            require ext_code.size(sub_71ea2f93[idx].field_512)
            staticcall sub_71ea2f93[idx].field_512.0xdf1c455c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_39] == mem[_39]
            if mem[_39] > 0:
                return 1
        else:
            mem[mem[64] + 4] = sub_71ea2f93[idx].field_256
            require ext_code.size(sub_71ea2f93[idx].field_0)
            staticcall sub_71ea2f93[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_71ea2f93[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _44 = mem[_43]
            require mem[_43] == mem[_43]
            mem[mem[64] + 4] = sub_71ea2f93[idx].field_256
            mem[mem[64] + 36] = this.address
            require ext_code.size(sub_71ea2f93[idx].field_0)
            staticcall sub_71ea2f93[idx].field_0.0xdd62ed3e with:
                    gas gas_remaining wei
                   args sub_71ea2f93[idx].field_256, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_49] == mem[_49]
            if _44 < mem[_49]:
                if _44 >= sub_71ea2f93[idx].field_768:
                    return 1
                require ext_code.size(sub_71ea2f93[idx].field_512)
                staticcall sub_71ea2f93[idx].field_512.0xdf1c455c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _57 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_57] == mem[_57]
                if mem[_57] > 0:
                    return 1
            else:
                if mem[_49] >= sub_71ea2f93[idx].field_768:
                    return 1
                require ext_code.size(sub_71ea2f93[idx].field_512)
                staticcall sub_71ea2f93[idx].field_512.0xdf1c455c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_58] == mem[_58]
                if mem[_58] > 0:
                    return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function allocate() payable {
    mem[64] = 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < sub_71ea2f93.length:
        mem[0] = 3
        if block.timestamp < sub_71ea2f93[idx].field_1280:
            require ext_code.size(sub_71ea2f93[idx].field_512)
            call sub_71ea2f93[idx].field_512.0xabaa9916 with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _261 = mem[_260]
            require mem[_260] == mem[_260]
            if mem[_260] > 0:
                mem[mem[64]] = sub_71ea2f93[idx].field_0
                mem[mem[64] + 32] = _261
                emit Allocate(sub_71ea2f93[idx].field_0, _261, sub_71ea2f93[idx].field_512);
        else:
            mem[mem[64] + 4] = sub_71ea2f93[idx].field_256
            require ext_code.size(sub_71ea2f93[idx].field_0)
            staticcall sub_71ea2f93[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_71ea2f93[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _265 = mem[_263]
            require mem[_263] == mem[_263]
            mem[mem[64] + 4] = sub_71ea2f93[idx].field_256
            mem[mem[64] + 36] = this.address
            require ext_code.size(sub_71ea2f93[idx].field_0)
            staticcall sub_71ea2f93[idx].field_0.0xdd62ed3e with:
                    gas gas_remaining wei
                   args sub_71ea2f93[idx].field_256, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_269] == mem[_269]
            if _265 < mem[_269]:
                if _265 < sub_71ea2f93[idx].field_768:
                    mem[mem[64] + 32] = sub_71ea2f93[idx].field_768
                    emit 0x40888be9: sub_71ea2f93[idx].field_0, sub_71ea2f93[idx].field_768, sub_71ea2f93[idx].field_256
                    require ext_code.size(sub_71ea2f93[idx].field_512)
                    call sub_71ea2f93[idx].field_512.0xabaa9916 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _283 = mem[_281]
                    require mem[_281] == mem[_281]
                    if mem[_281] > 0:
                        mem[mem[64]] = sub_71ea2f93[idx].field_0
                        mem[mem[64] + 32] = _283
                        emit Allocate(sub_71ea2f93[idx].field_0, _283, sub_71ea2f93[idx].field_512);
                else:
                    if block.timestamp > -sub_71ea2f93[idx].field_1024 - 1:
                        revert with 'NH{q', 17
                    sub_71ea2f93[idx].field_1280 = block.timestamp + sub_71ea2f93[idx].field_1024
                    _273 = mem[64]
                    mem[mem[64] + 36] = sub_71ea2f93[idx].field_256
                    mem[mem[64] + 68] = sub_71ea2f93[idx].field_512
                    mem[mem[64] + 100] = sub_71ea2f93[idx].field_768
                    _285 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_285 + 32] = mem[_285 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[64] = _273 + 196
                    mem[_273 + 132] = 32
                    mem[_273 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(sub_71ea2f93[idx].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _299 = mem[_285]
                    s = 0
                    while s < _299:
                        mem[_273 + s + 196] = mem[_285 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_299) > _299:
                        mem[_273 + _299 + 196] = 0
                    call sub_71ea2f93[idx].field_0.mem[_273 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_273 + 200 len _299 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_273 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_273 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_273 + idx + 264] = mem[_273 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_273 + 264]
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_71ea2f93[idx].field_512)
                        call sub_71ea2f93[idx].field_512.0xabaa9916 with:
                             gas gas_remaining wei
                        mem[_273 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _273 + ceil32(return_data.size) + 196
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 0:
                            mem[_273 + ceil32(return_data.size) + 196] = sub_71ea2f93[idx].field_0
                            mem[_273 + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            emit Allocate(sub_71ea2f93[idx].field_0, ext_call.return_data[0], sub_71ea2f93[idx].field_512);
                    else:
                        mem[_273 + 196] = return_data.size
                        mem[_273 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_273 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_273 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[_273 + ceil32(return_data.size) + idx + 265] = mem[_273 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_273 + ceil32(return_data.size) + 265]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_273 + 228] == bool(mem[_273 + 228])
                            if not mem[_273 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_71ea2f93[idx].field_512)
                        call sub_71ea2f93[idx].field_512.0xabaa9916 with:
                             gas gas_remaining wei
                        mem[_273 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _273 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 0:
                            mem[_273 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = sub_71ea2f93[idx].field_0
                            mem[_273 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            emit Allocate(sub_71ea2f93[idx].field_0, ext_call.return_data[0], sub_71ea2f93[idx].field_512);
            else:
                if mem[_269] < sub_71ea2f93[idx].field_768:
                    mem[mem[64] + 32] = sub_71ea2f93[idx].field_768
                    emit 0x40888be9: sub_71ea2f93[idx].field_0, sub_71ea2f93[idx].field_768, sub_71ea2f93[idx].field_256
                    require ext_code.size(sub_71ea2f93[idx].field_512)
                    call sub_71ea2f93[idx].field_512.0xabaa9916 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _282 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _284 = mem[_282]
                    require mem[_282] == mem[_282]
                    if mem[_282] > 0:
                        mem[mem[64]] = sub_71ea2f93[idx].field_0
                        mem[mem[64] + 32] = _284
                        emit Allocate(sub_71ea2f93[idx].field_0, _284, sub_71ea2f93[idx].field_512);
                else:
                    if block.timestamp > -sub_71ea2f93[idx].field_1024 - 1:
                        revert with 'NH{q', 17
                    sub_71ea2f93[idx].field_1280 = block.timestamp + sub_71ea2f93[idx].field_1024
                    _274 = mem[64]
                    mem[mem[64] + 36] = sub_71ea2f93[idx].field_256
                    mem[mem[64] + 68] = sub_71ea2f93[idx].field_512
                    mem[mem[64] + 100] = sub_71ea2f93[idx].field_768
                    _287 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_287 + 32] = mem[_287 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[64] = _274 + 196
                    mem[_274 + 132] = 32
                    mem[_274 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(sub_71ea2f93[idx].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _300 = mem[_287]
                    s = 0
                    while s < _300:
                        mem[_274 + s + 196] = mem[_287 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_300) > _300:
                        mem[_274 + _300 + 196] = 0
                    call sub_71ea2f93[idx].field_0.mem[_274 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_274 + 200 len _300 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_274 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_274 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_274 + idx + 264] = mem[_274 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_274 + 264]
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_71ea2f93[idx].field_512)
                        call sub_71ea2f93[idx].field_512.0xabaa9916 with:
                             gas gas_remaining wei
                        mem[_274 + 196] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _274 + ceil32(return_data.size) + 196
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 0:
                            mem[_274 + ceil32(return_data.size) + 196] = sub_71ea2f93[idx].field_0
                            mem[_274 + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            emit Allocate(sub_71ea2f93[idx].field_0, ext_call.return_data[0], sub_71ea2f93[idx].field_512);
                    else:
                        mem[_274 + 196] = return_data.size
                        mem[_274 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_274 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_274 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[_274 + ceil32(return_data.size) + idx + 265] = mem[_274 + idx + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_274 + ceil32(return_data.size) + 265]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_274 + 228] == bool(mem[_274 + 228])
                            if not mem[_274 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_71ea2f93[idx].field_512)
                        call sub_71ea2f93[idx].field_512.0xabaa9916 with:
                             gas gas_remaining wei
                        mem[_274 + ceil32(return_data.size) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _274 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 0:
                            mem[_274 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = sub_71ea2f93[idx].field_0
                            mem[_274 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            emit Allocate(sub_71ea2f93[idx].field_0, ext_call.return_data[0], sub_71ea2f93[idx].field_512);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor1 = 1
}



}
