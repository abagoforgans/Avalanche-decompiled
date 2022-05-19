contract main {




// =====================  Runtime code  =====================


#
#  - depositAll()
#  - initialize(address arg1, address arg2, address arg3, address arg4, bool arg5, string arg6, string arg7)
#
const version = ''

const max = 10000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint32 stor101;
address governanceAddress;
uint256 stor101;
address strategistAddress;
address keeperAddress;
mapping of uint8 stor154;
uint8 paused;
address tokenAddress;
uint256 min;
mapping of uint256 blockLock;
uint32 stor258;
address strategyAddress;
uint256 stor258;
address rewardsAddress;
address guardianAddress;
address guestListAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function strategist() payable {
    return strategistAddress
}

function blockLock(address arg1) payable {
    require calldata.size - 4 >= 32
    return blockLock[arg1]
}

function decimals() payable {
    return decimals
}

function guardian() payable {
    return guardianAddress
}

function guestList() payable {
    return guestListAddress
}

function governance() payable {
    return address(governanceAddress)
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function rewards() payable {
    return rewardsAddress
}

function strategy() payable {
    return address(strategyAddress)
}

function keeper() payable {
    return keeperAddress
}

function approved(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor154[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function min() payable {
    return min
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    keeperAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    strategistAddress = arg1
}

function revokeContractAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    stor154[address(arg1)] = 0
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    address(governanceAddress) = arg1
}

function approveContractAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    stor154[address(arg1)] = 1
}

function unpause() payable {
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'sPausable: paused'
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    min = arg1
}

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'sPausable: paused'
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    rewardsAddress = arg1
}

function setGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'sPausable: paused'
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    guardianAddress = arg1
}

function setGuestList(address arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'sPausable: paused'
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    guestListAddress = arg1
}

function pause() payable {
    if guardianAddress != msg.sender:
        if address(governanceAddress) != msg.sender:
            revert with 0, 'onlyPausers'
    if paused:
        revert with 0, 'sPausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function available() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_84f22721(?) payable {
    if strategistAddress != msg.sender:
        if address(governanceAddress) != msg.sender:
            revert with 0, 'onlyGovernanceOrStrategist'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0x84f22721 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function balance() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x45524332303a20617070726f76652066726f6d20746865207a65726f2061646472657300,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x45524332303a20617070726f76652066726f6d20746865207a65726f2061646472657300, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'sPausable: paused'
    if address(governanceAddress) != msg.sender:
        revert with 0, 'onlyGovernance'
    if address(strategyAddress):
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73506c65617365207769746864726177416c6c206265666f7265206368616e67696e672073747261,
                        mem[204 len 24]
    address(strategyAddress) = arg1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x45524332303a20617070726f76652066726f6d20746865207a65726f2061646472657300,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'sPausable: paused'
    if block.number <= blockLock[msg.sender]:
        revert with 0, 'blockLocked'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getPricePerFullShare() payable {
    if not totalSupply:
        return 10^18
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (2 * 10^18 * ext_call.return_data[0] / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 53)))
    revert
}

function trackFullPricePerShare() payable {
    if paused:
        revert with 0, 'sPausable: paused'
    if keeperAddress != msg.sender:
        if address(governanceAddress) != msg.sender:
            revert with 0, 'onlyAuthorizedActors'
    if not totalSupply:
        emit FullPricePerShareUpdated(10^18, block.timestamp, block.number);
    else:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            emit FullPricePerShareUpdated((0 / totalSupply), block.timestamp, block.number);
        else:
            if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            emit FullPricePerShareUpdated((2 * 10^18 * ext_call.return_data[0] / totalSupply), block.timestamp, block.number);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if paused:
        revert with 0, 'sPausable: paused'
    if block.number <= blockLock[msg.sender]:
        revert with 0, 'blockLocked'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x45524332303a20617070726f76652066726f6d20746865207a65726f2061646472657300, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function withdrawOther(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if address(governanceAddress) != msg.sender:
            revert with 0, 'onlyGovernanceOrStrategist'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0x1bd43be3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor101), uint32(stor101), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor101)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor101), uint32(stor101), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor101):
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function earn() payable {
    if paused:
        revert with 0, 'sPausable: paused'
    if msg.sender == keeperAddress:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor258), uint32(stor258), ext_call.return_data[0 len 28]
    else:
        if address(governanceAddress) != msg.sender:
            revert with 0, 'onlyAuthorizedActors'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor258), uint32(stor258), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
    call tokenAddress with:
       funct uint32(stor258)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor258), uint32(stor258), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor258):
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xd389800f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'sPausable: paused'
    if not stor154[msg.sender]:
        if msg.sender != tx.origin:
            revert with 0, 'Access denied for caller'
    if block.number <= blockLock[msg.sender]:
        revert with 0, 'blockLocked'
    blockLock[address(arg1)] = block.number
    if guestListAddress:
        require ext_code.size(guestListAddress)
        staticcall guestListAddress.authorized(address arg1, uint256 arg2, bytes32[] arg3) with:
                gas gas_remaining wei
               args address(arg1), arg2, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'guest-list-authorization'
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[448 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalSupply:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, arg1);
    else:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += 0 / 2 * ext_call.return_data[0]
        emit Transfer((0 / 2 * ext_call.return_data[0]), 0, arg1);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'sPausable: paused'
    if not stor154[msg.sender]:
        if msg.sender != tx.origin:
            revert with 0, 'Access denied for caller'
    if block.number <= blockLock[msg.sender]:
        revert with 0, 'blockLocked'
    blockLock[address(msg.sender)] = block.number
    if guestListAddress:
        require ext_code.size(guestListAddress)
        staticcall guestListAddress.authorized(address arg1, uint256 arg2, bytes32[] arg3) with:
                gas gas_remaining wei
               args msg.sender, arg1, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'guest-list-authorization'
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[448 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, msg.sender);
    else:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
        emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
}

function depositFor(address arg1, uint256 arg2, bytes32[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if paused:
        revert with 0, 'sPausable: paused'
    if stor154[msg.sender]:
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(arg1)] = block.number
        if not guestListAddress:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 128] = 100
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * arg3.length) + 430 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * arg3.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[(32 * arg3.length) + 448 len 4] = 0
        else:
            mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(guestListAddress)
            staticcall guestListAddress.authorized(address arg1, uint256 arg2, bytes32[] arg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'guest-list-authorization'
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 128] = 100
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * arg3.length) + 430 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * arg3.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[(32 * arg3.length) + 448 len 4] = 0
            mem[(32 * arg3.length) + 420 len 0] = 0
    else:
        if msg.sender != tx.origin:
            revert with 0, 'Access denied for caller'
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(arg1)] = block.number
        if guestListAddress:
            mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(guestListAddress)
            staticcall guestListAddress.authorized(address arg1, uint256 arg2, bytes32[] arg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'guest-list-authorization'
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = 100
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * arg3.length) + 430 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * arg3.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[(32 * arg3.length) + 448 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[(32 * arg3.length) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg3.length:
                revert with memory
                  from 128
                   len arg3.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg3.length:
            require arg3.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg3.length) + 434 len 14],
                            0,
                            mem[(32 * arg3.length) + 452 len 4]
    else:
        mem[(32 * arg3.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg3.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg3.length) + ceil32(return_data.size) + 435 len 22]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalSupply:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, arg1);
    else:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += 0 / 2 * ext_call.return_data[0]
        emit Transfer((0 / 2 * ext_call.return_data[0]), 0, arg1);
}

function depositAll(bytes32[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if paused:
        revert with 0, 'sPausable: paused'
    if stor154[msg.sender]:
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(msg.sender)] = block.number
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if guestListAddress:
            mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(guestListAddress)
            staticcall guestListAddress.authorized(address arg1, uint256 arg2, bytes32[] arg3) with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'guest-list-authorization'
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 128] = 100
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * arg1.length) + 430 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * arg1.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
        mem[(32 * arg1.length) + 448 len 4] = 0
    else:
        if msg.sender != tx.origin:
            revert with 0, 'Access denied for caller'
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(msg.sender)] = block.number
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not guestListAddress:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 128] = 100
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * arg1.length) + 430 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * arg1.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
            mem[(32 * arg1.length) + 448 len 4] = 0
            mem[(32 * arg1.length) + 420 len 0] = 0
        else:
            mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(guestListAddress)
            staticcall guestListAddress.authorized(address arg1, uint256 arg2, bytes32[] arg3) with:
                    gas gas_remaining wei
                   args msg.sender, ext_call.return_data[0], Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'guest-list-authorization'
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 128] = 100
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * arg1.length) + 430 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * arg1.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
            mem[(32 * arg1.length) + 448 len 4] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[(32 * arg1.length) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with memory
                  from 128
                   len arg1.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg1.length) + 434 len 14],
                            0,
                            mem[(32 * arg1.length) + 452 len 4]
    else:
        mem[(32 * arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg1.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg1.length) + ceil32(return_data.size) + 435 len 22]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, msg.sender);
    else:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
        emit Transfer((0 / 2 * ext_call.return_data[0]), 0, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'sPausable: paused'
    if stor154[msg.sender]:
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(msg.sender)] = block.number
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((0 / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
        else:
            if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                mem[420 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                    mem[420 len 0] = 0
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[420 len 0] = 0
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
    else:
        if msg.sender != tx.origin:
            revert with 0, 'Access denied for caller'
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(msg.sender)] = block.number
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((0 / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
        else:
            if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                mem[420 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[420 len 0] = 0
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
}

function withdrawAll() payable {
    if paused:
        revert with 0, 'sPausable: paused'
    if stor154[msg.sender]:
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(msg.sender)] = block.number
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((0 / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
        else:
            if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / 2 * ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                mem[420 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                    mem[420 len 0] = 0
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
    else:
        if msg.sender != tx.origin:
            revert with 0, 'Access denied for caller'
        if block.number <= blockLock[msg.sender]:
            revert with 0, 'blockLocked'
        blockLock[address(msg.sender)] = block.number
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).balanceOf() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                mem[420 len 0] = 0
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((0 / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
        else:
            if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / 2 * ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                call tokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[420 len 4]
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(strategyAddress))
                call address(strategyAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[420 len 4]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[420 len 0] = 0
                    call tokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
}



}
