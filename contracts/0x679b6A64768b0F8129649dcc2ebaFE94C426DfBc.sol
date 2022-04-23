contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, uint256 arg2)
#  - sub_50d7e57c(?)
#  - recoverERC20(address arg1, uint256 arg2)
#  - sub_943a9782(?)
#
const version = '', 0

const FACTORY = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const BASE = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const MAX_BPS = 10000


uint8 stor51;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address governanceAddress;
address managerAddress;
array of address tokens;
array of uint256 weights;
array of uint256 sub_e5fba6cc;
array of address sub_ddef9ea1;
uint256 sl;
mapping of uint256 blockLock;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function blockLock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return blockLock[arg1]
}

function decimals() payable {
    return decimals
}

function manager() payable {
    return managerAddress
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function governance() payable {
    return governanceAddress
}

function paused() payable {
    return bool(stor51)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sl() payable {
    return sl
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function weights(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < weights.length
    return weights[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddef9ea1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ddef9ea1.length
    return sub_ddef9ea1[arg1]
}

function sub_e5fba6cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e5fba6cc.length
    return sub_e5fba6cc[arg1]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if governanceAddress != msg.sender:
        revert with 0, 'onlyGovernance'
    if not stor51:
        revert with 0, 'Pausable: not paused'
    stor51 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    if managerAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'onlyPausers'
    if stor51:
        revert with 0, 'Pausable: paused'
    stor51 = 1
    emit Paused(msg.sender);
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor51:
        revert with 0, 'Pausable: paused'
    if block.number <= blockLock[msg.sender]:
        revert with 0, 'blockLocked'
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor51:
        revert with 0, 'Pausable: paused'
    if block.number <= blockLock[msg.sender]:
        revert with 0, 'blockLocked'
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor51:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, 'Access denied for caller'
    if block.number <= blockLock[msg.sender]:
        revert with 0, 'blockLocked'
    blockLock[address(msg.sender)] = block.number
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        mem[224] = 34
        mem[256 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30] >> 16, 0
        mem[0] = msg.sender
        mem[32] = 101
        balanceOf[address(msg.sender)] -= arg1
        mem[64] = 384
        mem[320] = 30
        mem[352] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= arg1
        mem[384] = arg1
        emit Transfer(arg1, msg.sender, 0);
        idx = 0
        while idx < tokens.length:
            mem[0] = 153
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokens[idx])
            staticcall tokens[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _350 = mem[_348]
            if not 0 / totalSupply / 10000:
                require idx < tokens.length
                mem[0] = 153
                _360 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                _365 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_365 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_365 + 36 len 28]
                mem[64] = _360 + 164
                mem[_360 + 100] = 32
                mem[_360 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(tokens[idx]):
                    revert with 0, 'Address: call to non-contract'
                _384 = mem[_365]
                s = 0
                while s < _384:
                    mem[s + _360 + 164] = mem[s + _365 + 32]
                    s = s + 32
                    continue 
                if ceil32(_384) > _384:
                    mem[_384 + _360 + 164] = 0
                call tokens[idx].mem[_360 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_360 + 168 len _384 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_360 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_360 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _360 + 232] = mem[idx + _360 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_360 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _360 + ceil32(return_data.size) + 165
                    mem[_360 + 164] = return_data.size
                    mem[_360 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_360 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_360 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _360 + ceil32(return_data.size) + 233] = mem[idx + _360 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_360 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_360 + 196] == bool(mem[_360 + 196])
                        if not mem[_360 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if mem[_348] * 0 / totalSupply / 10000 / 0 / totalSupply / 10000 != mem[_348]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require idx < tokens.length
                mem[0] = 153
                _362 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _350 * 0 / totalSupply / 10000
                _370 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_370 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_370 + 36 len 28]
                mem[64] = _362 + 164
                mem[_362 + 100] = 32
                mem[_362 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(tokens[idx]):
                    revert with 0, 'Address: call to non-contract'
                _387 = mem[_370]
                s = 0
                while s < _387:
                    mem[s + _362 + 164] = mem[s + _370 + 32]
                    s = s + 32
                    continue 
                if ceil32(_387) > _387:
                    mem[_387 + _362 + 164] = 0
                call tokens[idx].mem[_362 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_362 + 168 len _387 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_362 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_362 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _362 + 232] = mem[idx + _362 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_362 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _362 + ceil32(return_data.size) + 165
                    mem[_362 + 164] = return_data.size
                    mem[_362 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_362 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_362 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _362 + ceil32(return_data.size) + 233] = mem[idx + _362 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_362 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_362 + 196] == bool(mem[_362 + 196])
                        if not mem[_362 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = idx + 1
            continue 
    else:
        if 10000 * arg1 / arg1 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        mem[224] = 34
        mem[256 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30] >> 16, 0
        mem[0] = msg.sender
        mem[32] = 101
        balanceOf[address(msg.sender)] -= arg1
        mem[64] = 384
        mem[320] = 30
        mem[352] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= arg1
        mem[384] = arg1
        emit Transfer(arg1, msg.sender, 0);
        idx = 0
        while idx < tokens.length:
            mem[0] = 153
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokens[idx])
            staticcall tokens[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_347]
            if not 10000 * arg1 / totalSupply / 10000:
                require idx < tokens.length
                mem[0] = 153
                _357 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                _363 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_363 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_363 + 36 len 28]
                mem[64] = _357 + 164
                mem[_357 + 100] = 32
                mem[_357 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(tokens[idx]):
                    revert with 0, 'Address: call to non-contract'
                _381 = mem[_363]
                s = 0
                while s < _381:
                    mem[s + _357 + 164] = mem[s + _363 + 32]
                    s = s + 32
                    continue 
                if ceil32(_381) > _381:
                    mem[_381 + _357 + 164] = 0
                call tokens[idx].mem[_357 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_357 + 168 len _381 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_357 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_357 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _357 + 232] = mem[idx + _357 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_357 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _357 + ceil32(return_data.size) + 165
                    mem[_357 + 164] = return_data.size
                    mem[_357 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_357 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_357 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _357 + ceil32(return_data.size) + 233] = mem[idx + _357 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_357 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_357 + 196] == bool(mem[_357 + 196])
                        if not mem[_357 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if mem[_347] * 10000 * arg1 / totalSupply / 10000 / 10000 * arg1 / totalSupply / 10000 != mem[_347]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require idx < tokens.length
                mem[0] = 153
                _361 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _349 * 10000 * arg1 / totalSupply / 10000
                _367 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_367 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_367 + 36 len 28]
                mem[64] = _361 + 164
                mem[_361 + 100] = 32
                mem[_361 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(tokens[idx]):
                    revert with 0, 'Address: call to non-contract'
                _385 = mem[_367]
                s = 0
                while s < _385:
                    mem[s + _361 + 164] = mem[s + _367 + 32]
                    s = s + 32
                    continue 
                if ceil32(_385) > _385:
                    mem[_385 + _361 + 164] = 0
                call tokens[idx].mem[_361 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_361 + 168 len _385 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_361 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_361 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _361 + 232] = mem[idx + _361 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_361 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _361 + ceil32(return_data.size) + 165
                    mem[_361 + 164] = return_data.size
                    mem[_361 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_361 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_361 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _361 + ceil32(return_data.size) + 233] = mem[idx + _361 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_361 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_361 + 196] == bool(mem[_361 + 196])
                        if not mem[_361 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = idx + 1
            continue 
}



}
