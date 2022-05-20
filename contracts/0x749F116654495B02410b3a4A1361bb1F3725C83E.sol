contract main {




// =====================  Runtime code  =====================


const EIP712_PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


mapping of uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 EIP712_DOMAIN_SEPARATOR;
mapping of uint256 stor8;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor0[address(arg1)])
}

function EIP712_DOMAIN_SEPARATOR() payable {
    return EIP712_DOMAIN_SEPARATOR
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceMinter() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor0[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinterRole: caller does not have the Minter role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor0[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor0[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinterRole: caller does not have the Minter role'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[324 len 28] >> 32, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x65446f6c6c61723a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[265 len 23] >> 72,
                        0
        if not arg1:
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    mem[0] = arg1
    mem[32] = 8
    stor8[address(arg1)]++
    mem[128] = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9
    mem[160] = arg1
    mem[192] = arg2
    mem[224] = arg3
    mem[256] = stor8[address(arg1)]
    mem[288] = arg4
    mem[96] = 192
    mem[416] = arg6
    mem[448] = arg7
    signer = erecover(sha3(6401, EIP712_DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, stor8[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    mem[320] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        mem[384] = 'Permittable' << 168
        mem[352] = 32
        mem[64] = 416
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 383]):
                idx = idx - 1
                continue 
            mem[352] = idx
            mem[448] = 'Invalid signature' << 120
            mem[416] = 32
            mem[64] = 480
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 447]):
                    s = s - 1
                    continue 
                mem[416] = s
                s = 0
                while s < idx:
                    mem[s + 512] = mem[s + 384]
                    s = s + 32
                    continue 
                mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _686 = mem[416]
                    s = 0
                    while s < mem[416]:
                        mem[s + idx + 514] = mem[s + 448]
                        s = s + 32
                        continue 
                    if ceil32(mem[416]) <= mem[416]:
                        _1009 = mem[64]
                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                        mem[64] = _686 + idx + 514
                        mem[_686 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_686 + idx + 518] = 32
                        _1057 = mem[_1009]
                        mem[_686 + idx + 550] = mem[_1009]
                        s = 0
                        while s < _1057:
                            mem[s + _686 + idx + 582] = mem[s + _1009 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1057) > _1057:
                            mem[_686 + idx + _1057 + 582] = 0
                        revert with 0, 32, mem[_686 + idx + 550 len ceil32(_1057) + 32]
                    mem[idx + mem[416] + 514] = 0
                    _1033 = mem[64]
                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                    mem[64] = _686 + idx + 514
                    mem[_686 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_686 + idx + 518] = 32
                    _1081 = mem[_1033]
                    mem[_686 + idx + 550] = mem[_1033]
                    s = 0
                    while s < _1081:
                        mem[s + _686 + idx + 582] = mem[s + _1033 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1081) > _1081:
                        mem[_686 + idx + _1081 + 582] = 0
                    revert with 0, 32, mem[_686 + idx + 550 len ceil32(_1081) + 32]
                _698 = mem[416]
                s = 0
                while s < mem[416]:
                    mem[s + idx + 514] = mem[s + 448]
                    s = s + 32
                    continue 
                if ceil32(mem[416]) <= mem[416]:
                    _1010 = mem[64]
                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                    mem[64] = _698 + idx + 514
                    mem[_698 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_698 + idx + 518] = 32
                    _1058 = mem[_1010]
                    mem[_698 + idx + 550] = mem[_1010]
                    s = 0
                    while s < _1058:
                        mem[s + _698 + idx + 582] = mem[s + _1010 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1058) > _1058:
                        mem[_698 + idx + _1058 + 582] = 0
                    revert with 0, 32, mem[_698 + idx + 550 len ceil32(_1058) + 32]
                mem[idx + mem[416] + 514] = 0
                _1034 = mem[64]
                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                mem[64] = _698 + idx + 514
                mem[_698 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_698 + idx + 518] = 32
                _1082 = mem[_1034]
                mem[_698 + idx + 550] = mem[_1034]
                s = 0
                while s < _1082:
                    mem[s + _698 + idx + 582] = mem[s + _1034 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1082) > _1082:
                    mem[_698 + idx + _1082 + 582] = 0
                revert with 0, 32, mem[_698 + idx + 550 len ceil32(_1082) + 32]
            mem[480] = 0
            mem[64] = 512
            s = 0
            while s < idx:
                mem[s + 544] = mem[s + 384]
                s = s + 32
                continue 
            mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _685 = mem[480]
                s = 0
                while s < mem[480]:
                    mem[s + idx + 546] = mem[s + 512]
                    s = s + 32
                    continue 
                if ceil32(mem[480]) <= mem[480]:
                    _1007 = mem[64]
                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                    mem[64] = _685 + idx + 546
                    mem[_685 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_685 + idx + 550] = 32
                    _1055 = mem[_1007]
                    mem[_685 + idx + 582] = mem[_1007]
                    s = 0
                    while s < _1055:
                        mem[s + _685 + idx + 614] = mem[s + _1007 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1055) > _1055:
                        mem[_685 + idx + _1055 + 614] = 0
                    revert with 0, 32, mem[_685 + idx + 582 len ceil32(_1055) + 32]
                mem[idx + mem[480] + 546] = 0
                _1031 = mem[64]
                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                mem[64] = _685 + idx + 546
                mem[_685 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_685 + idx + 550] = 32
                _1079 = mem[_1031]
                mem[_685 + idx + 582] = mem[_1031]
                s = 0
                while s < _1079:
                    mem[s + _685 + idx + 614] = mem[s + _1031 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1079) > _1079:
                    mem[_685 + idx + _1079 + 614] = 0
                revert with 0, 32, mem[_685 + idx + 582 len ceil32(_1079) + 32]
            _697 = mem[480]
            s = 0
            while s < mem[480]:
                mem[s + idx + 546] = mem[s + 512]
                s = s + 32
                continue 
            if ceil32(mem[480]) <= mem[480]:
                _1008 = mem[64]
                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                mem[64] = _697 + idx + 546
                mem[_697 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_697 + idx + 550] = 32
                _1056 = mem[_1008]
                mem[_697 + idx + 582] = mem[_1008]
                s = 0
                while s < _1056:
                    mem[s + _697 + idx + 614] = mem[s + _1008 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1056) > _1056:
                    mem[_697 + idx + _1056 + 614] = 0
                revert with 0, 32, mem[_697 + idx + 582 len ceil32(_1056) + 32]
            mem[idx + mem[480] + 546] = 0
            _1032 = mem[64]
            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
            mem[64] = _697 + idx + 546
            mem[_697 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_697 + idx + 550] = 32
            _1080 = mem[_1032]
            mem[_697 + idx + 582] = mem[_1032]
            s = 0
            while s < _1080:
                mem[s + _697 + idx + 614] = mem[s + _1032 + 32]
                s = s + 32
                continue 
            if ceil32(_1080) > _1080:
                mem[_697 + idx + _1080 + 614] = 0
            revert with 0, 32, mem[_697 + idx + 582 len ceil32(_1080) + 32]
        mem[416] = 0
        mem[480] = 'Invalid signature' << 120
        mem[448] = 32
        mem[64] = 512
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 479]):
                idx = idx - 1
                continue 
            mem[448] = idx
            s = 0
            while s < 0:
                mem[s + 544] = mem[s + 448]
                s = s + 32
                continue 
            mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 546] = mem[s + 480]
                s = s + 32
                continue 
            mem[512] = idx + 2
            mem[64] = idx + 546
            mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 550] = 32
            mem[idx + 582] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 614] = mem[s + 544]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 616] = 0
            revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
    else:
        if not address(signer):
            mem[384] = 'Permittable' << 168
            mem[352] = 32
            mem[64] = 416
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 383]):
                    idx = idx - 1
                    continue 
                mem[352] = idx
                mem[448] = 'Zero address' << 160
                mem[416] = 32
                mem[64] = 480
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 447]):
                        s = s - 1
                        continue 
                    mem[416] = s
                    s = 0
                    while s < idx:
                        mem[s + 512] = mem[s + 384]
                        s = s + 32
                        continue 
                    mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _682 = mem[416]
                        s = 0
                        while s < mem[416]:
                            mem[s + idx + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        if ceil32(mem[416]) <= mem[416]:
                            _1001 = mem[64]
                            mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                            mem[64] = _682 + idx + 514
                            mem[_682 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_682 + idx + 518] = 32
                            _1049 = mem[_1001]
                            mem[_682 + idx + 550] = mem[_1001]
                            s = 0
                            while s < _1049:
                                mem[s + _682 + idx + 582] = mem[s + _1001 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1049) > _1049:
                                mem[_682 + idx + _1049 + 582] = 0
                            revert with 0, 32, mem[_682 + idx + 550 len ceil32(_1049) + 32]
                        mem[idx + mem[416] + 514] = 0
                        _1025 = mem[64]
                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                        mem[64] = _682 + idx + 514
                        mem[_682 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_682 + idx + 518] = 32
                        _1073 = mem[_1025]
                        mem[_682 + idx + 550] = mem[_1025]
                        s = 0
                        while s < _1073:
                            mem[s + _682 + idx + 582] = mem[s + _1025 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1073) > _1073:
                            mem[_682 + idx + _1073 + 582] = 0
                        revert with 0, 32, mem[_682 + idx + 550 len ceil32(_1073) + 32]
                    _694 = mem[416]
                    s = 0
                    while s < mem[416]:
                        mem[s + idx + 514] = mem[s + 448]
                        s = s + 32
                        continue 
                    if ceil32(mem[416]) <= mem[416]:
                        _1002 = mem[64]
                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                        mem[64] = _694 + idx + 514
                        mem[_694 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_694 + idx + 518] = 32
                        _1050 = mem[_1002]
                        mem[_694 + idx + 550] = mem[_1002]
                        s = 0
                        while s < _1050:
                            mem[s + _694 + idx + 582] = mem[s + _1002 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1050) > _1050:
                            mem[_694 + idx + _1050 + 582] = 0
                        revert with 0, 32, mem[_694 + idx + 550 len ceil32(_1050) + 32]
                    mem[idx + mem[416] + 514] = 0
                    _1026 = mem[64]
                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                    mem[64] = _694 + idx + 514
                    mem[_694 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_694 + idx + 518] = 32
                    _1074 = mem[_1026]
                    mem[_694 + idx + 550] = mem[_1026]
                    s = 0
                    while s < _1074:
                        mem[s + _694 + idx + 582] = mem[s + _1026 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1074) > _1074:
                        mem[_694 + idx + _1074 + 582] = 0
                    revert with 0, 32, mem[_694 + idx + 550 len ceil32(_1074) + 32]
                mem[480] = 0
                mem[64] = 512
                s = 0
                while s < idx:
                    mem[s + 544] = mem[s + 384]
                    s = s + 32
                    continue 
                mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _681 = mem[480]
                    s = 0
                    while s < mem[480]:
                        mem[s + idx + 546] = mem[s + 512]
                        s = s + 32
                        continue 
                    if ceil32(mem[480]) <= mem[480]:
                        _999 = mem[64]
                        mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                        mem[64] = _681 + idx + 546
                        mem[_681 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_681 + idx + 550] = 32
                        _1047 = mem[_999]
                        mem[_681 + idx + 582] = mem[_999]
                        s = 0
                        while s < _1047:
                            mem[s + _681 + idx + 614] = mem[s + _999 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1047) > _1047:
                            mem[_681 + idx + _1047 + 614] = 0
                        revert with 0, 32, mem[_681 + idx + 582 len ceil32(_1047) + 32]
                    mem[idx + mem[480] + 546] = 0
                    _1023 = mem[64]
                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                    mem[64] = _681 + idx + 546
                    mem[_681 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_681 + idx + 550] = 32
                    _1071 = mem[_1023]
                    mem[_681 + idx + 582] = mem[_1023]
                    s = 0
                    while s < _1071:
                        mem[s + _681 + idx + 614] = mem[s + _1023 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1071) > _1071:
                        mem[_681 + idx + _1071 + 614] = 0
                    revert with 0, 32, mem[_681 + idx + 582 len ceil32(_1071) + 32]
                _693 = mem[480]
                s = 0
                while s < mem[480]:
                    mem[s + idx + 546] = mem[s + 512]
                    s = s + 32
                    continue 
                if ceil32(mem[480]) <= mem[480]:
                    _1000 = mem[64]
                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                    mem[64] = _693 + idx + 546
                    mem[_693 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_693 + idx + 550] = 32
                    _1048 = mem[_1000]
                    mem[_693 + idx + 582] = mem[_1000]
                    s = 0
                    while s < _1048:
                        mem[s + _693 + idx + 614] = mem[s + _1000 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1048) > _1048:
                        mem[_693 + idx + _1048 + 614] = 0
                    revert with 0, 32, mem[_693 + idx + 582 len ceil32(_1048) + 32]
                mem[idx + mem[480] + 546] = 0
                _1024 = mem[64]
                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                mem[64] = _693 + idx + 546
                mem[_693 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_693 + idx + 550] = 32
                _1072 = mem[_1024]
                mem[_693 + idx + 582] = mem[_1024]
                s = 0
                while s < _1072:
                    mem[s + _693 + idx + 614] = mem[s + _1024 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1072) > _1072:
                    mem[_693 + idx + _1072 + 614] = 0
                revert with 0, 32, mem[_693 + idx + 582 len ceil32(_1072) + 32]
            mem[416] = 0
            mem[480] = 'Zero address' << 160
            mem[448] = 32
            mem[64] = 512
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 479]):
                    idx = idx - 1
                    continue 
                mem[448] = idx
                s = 0
                while s < 0:
                    mem[s + 544] = mem[s + 448]
                    s = s + 32
                    continue 
                mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 546] = mem[s + 480]
                    s = s + 32
                    continue 
                mem[512] = idx + 2
                mem[64] = idx + 546
                mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 550] = 32
                mem[idx + 582] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 614] = mem[s + 544]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 616] = 0
                revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
        else:
            if block.timestamp <= arg4:
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(arg2)] = arg3
                emit Approval(arg3, arg1, arg2);
            mem[384] = 'Permittable' << 168
            mem[352] = 32
            mem[64] = 416
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 383]):
                    idx = idx - 1
                    continue 
                mem[352] = idx
                mem[448] = 0x4578706972656400000000000000000000000000000000000000000000000000
                mem[416] = 32
                mem[64] = 480
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 447]):
                        s = s - 1
                        continue 
                    mem[416] = s
                    s = 0
                    while s < idx:
                        mem[s + 512] = mem[s + 384]
                        s = s + 32
                        continue 
                    mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _678 = mem[416]
                        s = 0
                        while s < mem[416]:
                            mem[s + idx + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        if ceil32(mem[416]) <= mem[416]:
                            _993 = mem[64]
                            mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                            mem[64] = _678 + idx + 514
                            mem[_678 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_678 + idx + 518] = 32
                            _1041 = mem[_993]
                            mem[_678 + idx + 550] = mem[_993]
                            s = 0
                            while s < _1041:
                                mem[s + _678 + idx + 582] = mem[s + _993 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1041) > _1041:
                                mem[_678 + idx + _1041 + 582] = 0
                            revert with 0, 32, mem[_678 + idx + 550 len ceil32(_1041) + 32]
                        mem[idx + mem[416] + 514] = 0
                        _1017 = mem[64]
                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                        mem[64] = _678 + idx + 514
                        mem[_678 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_678 + idx + 518] = 32
                        _1065 = mem[_1017]
                        mem[_678 + idx + 550] = mem[_1017]
                        s = 0
                        while s < _1065:
                            mem[s + _678 + idx + 582] = mem[s + _1017 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1065) > _1065:
                            mem[_678 + idx + _1065 + 582] = 0
                        revert with 0, 32, mem[_678 + idx + 550 len ceil32(_1065) + 32]
                    _690 = mem[416]
                    s = 0
                    while s < mem[416]:
                        mem[s + idx + 514] = mem[s + 448]
                        s = s + 32
                        continue 
                    if ceil32(mem[416]) <= mem[416]:
                        _994 = mem[64]
                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                        mem[64] = _690 + idx + 514
                        mem[_690 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_690 + idx + 518] = 32
                        _1042 = mem[_994]
                        mem[_690 + idx + 550] = mem[_994]
                        s = 0
                        while s < _1042:
                            mem[s + _690 + idx + 582] = mem[s + _994 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1042) > _1042:
                            mem[_690 + idx + _1042 + 582] = 0
                        revert with 0, 32, mem[_690 + idx + 550 len ceil32(_1042) + 32]
                    mem[idx + mem[416] + 514] = 0
                    _1018 = mem[64]
                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                    mem[64] = _690 + idx + 514
                    mem[_690 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_690 + idx + 518] = 32
                    _1066 = mem[_1018]
                    mem[_690 + idx + 550] = mem[_1018]
                    s = 0
                    while s < _1066:
                        mem[s + _690 + idx + 582] = mem[s + _1018 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1066) > _1066:
                        mem[_690 + idx + _1066 + 582] = 0
                    revert with 0, 32, mem[_690 + idx + 550 len ceil32(_1066) + 32]
                mem[480] = 0
                mem[64] = 512
                s = 0
                while s < idx:
                    mem[s + 544] = mem[s + 384]
                    s = s + 32
                    continue 
                mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _677 = mem[480]
                    s = 0
                    while s < mem[480]:
                        mem[s + idx + 546] = mem[s + 512]
                        s = s + 32
                        continue 
                    if ceil32(mem[480]) <= mem[480]:
                        _991 = mem[64]
                        mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                        mem[64] = _677 + idx + 546
                        mem[_677 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_677 + idx + 550] = 32
                        _1039 = mem[_991]
                        mem[_677 + idx + 582] = mem[_991]
                        s = 0
                        while s < _1039:
                            mem[s + _677 + idx + 614] = mem[s + _991 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1039) > _1039:
                            mem[_677 + idx + _1039 + 614] = 0
                        revert with 0, 32, mem[_677 + idx + 582 len ceil32(_1039) + 32]
                    mem[idx + mem[480] + 546] = 0
                    _1015 = mem[64]
                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                    mem[64] = _677 + idx + 546
                    mem[_677 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_677 + idx + 550] = 32
                    _1063 = mem[_1015]
                    mem[_677 + idx + 582] = mem[_1015]
                    s = 0
                    while s < _1063:
                        mem[s + _677 + idx + 614] = mem[s + _1015 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1063) > _1063:
                        mem[_677 + idx + _1063 + 614] = 0
                    revert with 0, 32, mem[_677 + idx + 582 len ceil32(_1063) + 32]
                _689 = mem[480]
                s = 0
                while s < mem[480]:
                    mem[s + idx + 546] = mem[s + 512]
                    s = s + 32
                    continue 
                if ceil32(mem[480]) <= mem[480]:
                    _992 = mem[64]
                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                    mem[64] = _689 + idx + 546
                    mem[_689 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_689 + idx + 550] = 32
                    _1040 = mem[_992]
                    mem[_689 + idx + 582] = mem[_992]
                    s = 0
                    while s < _1040:
                        mem[s + _689 + idx + 614] = mem[s + _992 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1040) > _1040:
                        mem[_689 + idx + _1040 + 614] = 0
                    revert with 0, 32, mem[_689 + idx + 582 len ceil32(_1040) + 32]
                mem[idx + mem[480] + 546] = 0
                _1016 = mem[64]
                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                mem[64] = _689 + idx + 546
                mem[_689 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_689 + idx + 550] = 32
                _1064 = mem[_1016]
                mem[_689 + idx + 582] = mem[_1016]
                s = 0
                while s < _1064:
                    mem[s + _689 + idx + 614] = mem[s + _1016 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1064) > _1064:
                    mem[_689 + idx + _1064 + 614] = 0
                revert with 0, 32, mem[_689 + idx + 582 len ceil32(_1064) + 32]
            mem[416] = 0
            mem[480] = 0x4578706972656400000000000000000000000000000000000000000000000000
            mem[448] = 32
            mem[64] = 512
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 479]):
                    idx = idx - 1
                    continue 
                mem[448] = idx
                s = 0
                while s < 0:
                    mem[s + 544] = mem[s + 448]
                    s = s + 32
                    continue 
                mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 546] = mem[s + 480]
                    s = s + 32
                    continue 
                mem[512] = idx + 2
                mem[64] = idx + 546
                mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 550] = 32
                mem[idx + 582] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 614] = mem[s + 544]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 616] = 0
                revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}



}
