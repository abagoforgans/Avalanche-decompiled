contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address _owner;
address _adminAddress;
uint8 paused;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor154;
array of struct stor155;
uint256 totalSupply;
uint8 decimals;
address distributionContractAddress; offset 8

function _admin() payable {
    return _adminAddress
}

function totalSupply() payable {
    return totalSupply
}

function distributionContractAddress() payable {
    return distributionContractAddress
}

function decimals() payable {
    return decimals
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _owner() payable {
    return _owner
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

function renounceOwnership() payable {
    if _adminAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the admin'
    _owner = _adminAddress
    emit OwnershipTransferred(_owner, _adminAddress);
}

function pause() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    return 1
}

function unpause() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    return 1
}

function updateDistributionContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributionContractAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    _owner = arg1
    emit OwnershipTransferred(_owner, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if distributionContractAddress != msg.sender:
        revert with 0, 'Caller is not the distributor'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit 0x65ddf252: arg2, 0, arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xef45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit 0x65ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit 0x65ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor154.length):
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        if bool(stor154.length):
            if bool(stor154.length) == stor154.length.field_1 < 32:
                revert with 0, 34
            if stor154.length.field_1:
                if 31 < stor154.length.field_1:
                    mem[128] = uint256(stor154.field_0)
                    idx = 128
                    s = 0
                    while stor154.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor154[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor154.length.field_1), data=mem[128 len ceil32(stor154.length.field_1)])
                mem[128] = 256 * stor154.length.field_8
        else:
            if bool(stor154.length) == stor154.length.field_1 < 32:
                revert with 0, 34
            if stor154.length.field_1:
                if 31 < stor154.length.field_1:
                    mem[128] = uint256(stor154.field_0)
                    idx = 128
                    s = 0
                    while stor154.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor154[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor154.length.field_1), data=mem[128 len ceil32(stor154.length.field_1)])
                mem[128] = 256 * stor154.length.field_8
        mem[ceil32(stor154.length.field_1) + 192 len ceil32(stor154.length.field_1)] = mem[128 len ceil32(stor154.length.field_1)]
        if ceil32(stor154.length.field_1) > stor154.length.field_1:
            mem[ceil32(stor154.length.field_1) + stor154.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor154.length.field_1), data=mem[128 len ceil32(stor154.length.field_1)], mem[(2 * ceil32(stor154.length.field_1)) + 192 len 2 * ceil32(stor154.length.field_1)]), 
    if bool(stor154.length) == stor154.length.field_1 < 32:
        revert with 0, 34
    if bool(stor154.length):
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        if stor154.length.field_1:
            if 31 < stor154.length.field_1:
                mem[128] = uint256(stor154.field_0)
                idx = 128
                s = 0
                while stor154.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor154[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)])
            mem[128] = 256 * stor154.length.field_8
    else:
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        if stor154.length.field_1:
            if 31 < stor154.length.field_1:
                mem[128] = uint256(stor154.field_0)
                idx = 128
                s = 0
                while stor154.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor154[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)])
            mem[128] = 256 * stor154.length.field_8
    mem[ceil32(stor154.length.field_1) + 192 len ceil32(stor154.length.field_1)] = mem[128 len ceil32(stor154.length.field_1)]
    if ceil32(stor154.length.field_1) > stor154.length.field_1:
        mem[ceil32(stor154.length.field_1) + stor154.length.field_1 + 192] = 0
    return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)], mem[(2 * ceil32(stor154.length.field_1)) + 192 len 2 * ceil32(stor154.length.field_1)]), 
}

function symbol() payable {
    if bool(stor155.length):
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        if bool(stor155.length):
            if bool(stor155.length) == stor155.length.field_1 < 32:
                revert with 0, 34
            if stor155.length.field_1:
                if 31 < stor155.length.field_1:
                    mem[128] = uint256(stor155.field_0)
                    idx = 128
                    s = 0
                    while stor155.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor155[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor155.length.field_1), data=mem[128 len ceil32(stor155.length.field_1)])
                mem[128] = 256 * stor155.length.field_8
        else:
            if bool(stor155.length) == stor155.length.field_1 < 32:
                revert with 0, 34
            if stor155.length.field_1:
                if 31 < stor155.length.field_1:
                    mem[128] = uint256(stor155.field_0)
                    idx = 128
                    s = 0
                    while stor155.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor155[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor155.length.field_1), data=mem[128 len ceil32(stor155.length.field_1)])
                mem[128] = 256 * stor155.length.field_8
        mem[ceil32(stor155.length.field_1) + 192 len ceil32(stor155.length.field_1)] = mem[128 len ceil32(stor155.length.field_1)]
        if ceil32(stor155.length.field_1) > stor155.length.field_1:
            mem[ceil32(stor155.length.field_1) + stor155.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor155.length.field_1), data=mem[128 len ceil32(stor155.length.field_1)], mem[(2 * ceil32(stor155.length.field_1)) + 192 len 2 * ceil32(stor155.length.field_1)]), 
    if bool(stor155.length) == stor155.length.field_1 < 32:
        revert with 0, 34
    if bool(stor155.length):
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        if stor155.length.field_1:
            if 31 < stor155.length.field_1:
                mem[128] = uint256(stor155.field_0)
                idx = 128
                s = 0
                while stor155.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor155[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)])
            mem[128] = 256 * stor155.length.field_8
    else:
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        if stor155.length.field_1:
            if 31 < stor155.length.field_1:
                mem[128] = uint256(stor155.field_0)
                idx = 128
                s = 0
                while stor155.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor155[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)])
            mem[128] = 256 * stor155.length.field_8
    mem[ceil32(stor155.length.field_1) + 192 len ceil32(stor155.length.field_1)] = mem[128 len ceil32(stor155.length.field_1)]
    if ceil32(stor155.length.field_1) > stor155.length.field_1:
        mem[ceil32(stor155.length.field_1) + stor155.length.field_1 + 192] = 0
    return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)], mem[(2 * ceil32(stor155.length.field_1)) + 192 len 2 * ceil32(stor155.length.field_1)]), 
}

function sub_c51ae3e0(?) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        _owner = msg.sender
        emit OwnershipTransferred(_owner, msg.sender);
        _adminAddress = msg.sender
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            _owner = msg.sender
            emit OwnershipTransferred(_owner, msg.sender);
            _adminAddress = msg.sender
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                _owner = msg.sender
                emit OwnershipTransferred(_owner, msg.sender);
                _adminAddress = msg.sender
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    _owner = msg.sender
                    emit OwnershipTransferred(_owner, msg.sender);
                    _adminAddress = msg.sender
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    _owner = msg.sender
                    emit OwnershipTransferred(_owner, msg.sender);
                    _adminAddress = msg.sender
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if not uint8(stor0.field_8):
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
    if bool(stor154.length):
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        uint8(stor154.length) = 18
        stor154.length.field_8 = 0
        stor154.length.field_184 = 1463223776604343461230
        idx = 0
        while stor154.length.field_1 + 31 / 32 > idx:
            stor154[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        uint8(stor154.length) = 18
        stor154.length.field_8 = 0
        stor154.length.field_184 = 1463223776604343461230
        idx = 0
        while stor154.length.field_1 + 31 / 32 > idx:
            stor154[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor155.length):
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        uint8(stor155.length) = 6
        stor155.length.field_8 = 0
        stor155.length.field_232 = 5198415
        idx = 0
        while stor155.length.field_1 + 31 / 32 > idx:
            stor155[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        uint8(stor155.length) = 6
        stor155.length.field_8 = 0
        stor155.length.field_232 = 5198415
        idx = 0
        while stor155.length.field_1 + 31 / 32 > idx:
            stor155[idx].field_0 = 0
            idx = idx + 1
            continue 
    decimals = 18
    totalSupply = arg1
    balanceOf[msg.sender] = arg1
    emit 0x65ddf252: arg1, 0, msg.sender
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}



}
