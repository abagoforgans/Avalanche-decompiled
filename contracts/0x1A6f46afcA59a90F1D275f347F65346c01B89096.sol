contract main {




// =====================  Runtime code  =====================


#
#  - claimReward()
#  - sub_d7038645(?)
#
address owner;
address stakeTokenAddress;
address WETHAddress;
address AVAXAddress;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShareAccuracyFactor;
mapping of uint256 totalShares;
mapping of uint256 sub_b1559aef;
uint256 sub_26d36ee5;
mapping of struct balanceOf;
mapping of uint8 stor11;
uint256 sub_ebd2df86;
address routerAddress;
address sub_17f20bbfAddress;
address sub_c844ddcfAddress;
address stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
mapping of uint8 stor23;
mapping of uint256 stor24;
uint256 stor25;
mapping of uint256 stor26;

function dividendsPerShareAccuracyFactor() payable {
    return dividendsPerShareAccuracyFactor
}

function totalShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalShares[arg1]
}

function sub_17f20bbf(?) payable {
    return sub_17f20bbfAddress
}

function sub_26d36ee5(?) payable {
    return sub_26d36ee5
}

function stakeToken() payable {
    return stakeTokenAddress
}

function isClaimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor23[arg1][arg2])
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function totalDividends() payable {
    return totalDividends
}

function WETH() payable {
    return WETHAddress
}

function sub_b1559aef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b1559aef[arg1]
}

function AVAX() payable {
    return AVAXAddress
}

function sub_c844ddcf(?) payable {
    return sub_c844ddcfAddress
}

function shares(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1].field_0, 
           balanceOf[arg1].field_256,
           balanceOf[arg1].field_512,
           balanceOf[arg1].field_768,
           balanceOf[arg1].field_1024,
           bool(balanceOf[arg1].field_1280)
}

function sub_ebd2df86(?) payable {
    return sub_ebd2df86
}

function totalDistributed() payable {
    return totalDistributed
}

function router() payable {
    return routerAddress
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

function setDayInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25 = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
}

function sub_421e45e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < balanceOf[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    return (block.timestamp - balanceOf[address(arg1)].field_256 / stor25)
}

function sub_af4061cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < balanceOf[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    return (block.timestamp - balanceOf[address(arg1)].field_1024 / stor25)
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
    stor19 = arg2
    stor20 = arg3
    stor21 = arg4
    stor22 = arg5
}

function sub_c7b3d12c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_ebd2df86 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_ebd2df86 += arg1
    if not sub_26d36ee5:
        revert with 'NH{q', 18
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 / sub_26d36ee5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_773f1674(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < balanceOf[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    if block.timestamp - balanceOf[address(arg1)].field_1024 / stor25 >= 15:
        return 0
    if block.timestamp - balanceOf[address(arg1)].field_1024 / stor25 and 4 > -1 / block.timestamp - balanceOf[address(arg1)].field_1024 / stor25:
        revert with 'NH{q', 17
    if 60 < 4 * block.timestamp - balanceOf[address(arg1)].field_1024 / stor25:
        revert with 'NH{q', 17
    return (-(4 * block.timestamp - balanceOf[address(arg1)].field_1024 / stor25) + 60)
}

function getRewardRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < balanceOf[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 30:
        return 1
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 45:
        return 2
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 60:
        return 3
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 90:
        return 4
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 180:
        return 5
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 > 365:
        return 7
    return 6
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[address(msg.sender)]:
        revert with 0, 'Not authorized!'
    require ext_code.size(WETHAddress)
    call WETHAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalDividends > -arg1 - 1:
        revert with 'NH{q', 17
    totalDividends += arg1
    idx = 1
    s = 0
    while idx <= 7:
        mem[0] = stor24[idx]
        mem[32] = 7
        if totalShares[stor24[idx]] and stor24[idx] > -1 / totalShares[stor24[idx]]:
            revert with 'NH{q', 17
        if s > (-1 * totalShares[stor24[idx]] * stor24[idx]) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (totalShares[stor24[idx]] * stor24[idx])
        continue 
    idx = 1
    while idx <= 7:
        mem[0] = stor24[idx]
        mem[32] = 7
        if totalShares[stor24[idx]] > 0:
            if totalShares[stor24[idx]] and stor24[idx] > -1 / totalShares[stor24[idx]]:
                revert with 'NH{q', 17
            if not 0x180ea14e592bc647d081ee78ba6d7c3465fc3bb29eff2fd359a19f381 * s / 10^18:
                revert with 'NH{q', 18
            if arg1 and totalShares[stor24[idx]] * stor24[idx] / 0x180ea14e592bc647d081ee78ba6d7c3465fc3bb29eff2fd359a19f381 * s / 10^18 > -1 / arg1:
                revert with 'NH{q', 17
            if dividendsPerShareAccuracyFactor and arg1 * totalShares[stor24[idx]] * stor24[idx] / 0x180ea14e592bc647d081ee78ba6d7c3465fc3bb29eff2fd359a19f381 * s / 10^18 > -1 / dividendsPerShareAccuracyFactor:
                revert with 'NH{q', 17
            if not totalShares[stor24[idx]]:
                revert with 'NH{q', 18
            if sub_b1559aef[stor24[idx]] > -(dividendsPerShareAccuracyFactor * arg1 * totalShares[stor24[idx]] * stor24[idx] / 0x180ea14e592bc647d081ee78ba6d7c3465fc3bb29eff2fd359a19f381 * s / 10^18 / totalShares[stor24[idx]] / 10^18) - 1:
                revert with 'NH{q', 17
            mem[0] = stor24[idx]
            mem[32] = 8
            sub_b1559aef[stor24[idx]] += dividendsPerShareAccuracyFactor * arg1 * totalShares[stor24[idx]] * stor24[idx] / 0x180ea14e592bc647d081ee78ba6d7c3465fc3bb29eff2fd359a19f381 * s / 10^18 / totalShares[stor24[idx]] / 10^18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a102b70e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < balanceOf[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 30:
        idx = 1
        s = 0
        while idx >= 1:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 23)
            if stor23[address(arg1)][idx]:
                return idx
            if s == -1:
                revert with 'NH{q', 17
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s + 1
            continue 
    else:
        if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 45:
            idx = 2
            s = 0
            while idx >= 1:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 23)
                if stor23[address(arg1)][idx]:
                    return idx
                if s == -1:
                    revert with 'NH{q', 17
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s + 1
                continue 
        else:
            if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 60:
                idx = 3
                s = 0
                while idx >= 1:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 23)
                    if stor23[address(arg1)][idx]:
                        return idx
                    if s == -1:
                        revert with 'NH{q', 17
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = s + 1
                    continue 
            else:
                if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 90:
                    idx = 4
                    s = 0
                    while idx >= 1:
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 23)
                        if stor23[address(arg1)][idx]:
                            return idx
                        if s == -1:
                            revert with 'NH{q', 17
                        if not idx:
                            revert with 'NH{q', 17
                        idx = idx - 1
                        s = s + 1
                        continue 
                else:
                    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 180:
                        idx = 5
                        s = 0
                        while idx >= 1:
                            mem[0] = idx
                            mem[32] = sha3(address(arg1), 23)
                            if stor23[address(arg1)][idx]:
                                return idx
                            if s == -1:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            s = s + 1
                            continue 
                    else:
                        if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 > 365:
                            idx = 7
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(arg1), 23)
                                if stor23[address(arg1)][idx]:
                                    return idx
                                if s == -1:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                s = s + 1
                                continue 
                        else:
                            idx = 6
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(arg1), 23)
                                if stor23[address(arg1)][idx]:
                                    return idx
                                if s == -1:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                s = s + 1
                                continue 
    return 1
}

function unstake() payable {
    if not balanceOf[address(msg.sender)].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Should be in unstaking period to unstake'
    require ext_code.size(stor17)
    call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 0, 0, 0, stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[address(msg.sender)].field_0 <= 0:
        revert with 0, 'No token staked!'
    if block.timestamp < balanceOf[address(msg.sender)].field_1024:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    if block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25 >= 15:
        if sub_ebd2df86 > -1:
            revert with 'NH{q', 17
        if stor26[address(msg.sender)] > 0:
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor26[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            stor26[address(msg.sender)] = 0
        balanceOf[address(msg.sender)].field_0 = 0
        balanceOf[address(msg.sender)].field_256 = 0
        balanceOf[address(msg.sender)].field_512 = 0
        balanceOf[address(msg.sender)].field_768 = 0
        balanceOf[address(msg.sender)].field_1024 = 0
        balanceOf[address(msg.sender)].field_1280 = 0
        if balanceOf[address(msg.sender)].field_0 < 0:
            revert with 'NH{q', 17
        if not sub_26d36ee5:
            revert with 'NH{q', 18
        require ext_code.size(stakeTokenAddress)
        call stakeTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, balanceOf[address(msg.sender)].field_0 / sub_26d36ee5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor17)
        call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args stor18, stor19, stor20, stor21, stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UnStake(msg.sender, balanceOf[address(msg.sender)].field_0, 0);
    else:
        if block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25 and 4 > -1 / block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25:
            revert with 'NH{q', 17
        if 60 < 4 * block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)].field_0 and -(4 * block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25) + 60 > -1 / balanceOf[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if sub_ebd2df86 > -((60 * balanceOf[address(msg.sender)].field_0) - (4 * block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25 * balanceOf[address(msg.sender)].field_0) / 100) - 1:
            revert with 'NH{q', 17
        sub_ebd2df86 += (60 * balanceOf[address(msg.sender)].field_0) - (4 * block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25 * balanceOf[address(msg.sender)].field_0) / 100
        if stor26[address(msg.sender)] > 0:
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor26[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            stor26[address(msg.sender)] = 0
        balanceOf[address(msg.sender)].field_0 = 0
        balanceOf[address(msg.sender)].field_256 = 0
        balanceOf[address(msg.sender)].field_512 = 0
        balanceOf[address(msg.sender)].field_768 = 0
        balanceOf[address(msg.sender)].field_1024 = 0
        balanceOf[address(msg.sender)].field_1280 = 0
        if balanceOf[address(msg.sender)].field_0 < (60 * balanceOf[address(msg.sender)].field_0) - (4 * block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25 * balanceOf[address(msg.sender)].field_0) / 100:
            revert with 'NH{q', 17
        if not sub_26d36ee5:
            revert with 'NH{q', 18
        require ext_code.size(stakeTokenAddress)
        call stakeTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, balanceOf[address(msg.sender)].field_0 - ((60 * balanceOf[address(msg.sender)].field_0) - (4 * block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25 * balanceOf[address(msg.sender)].field_0) / 100) / sub_26d36ee5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor17)
        call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args stor18, stor19, stor20, stor21, stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit UnStake(msg.sender, balanceOf[address(msg.sender)].field_0, (60 * balanceOf[address(msg.sender)].field_0) - (4 * block.timestamp - balanceOf[address(msg.sender)].field_1024 / stor25 * balanceOf[address(msg.sender)].field_0) / 100);
}

function getUnpaidEarnings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balanceOf[address(arg1)].field_0:
        return 0
    if balanceOf[address(arg1)].field_1280:
        return stor26[address(arg1)]
    if block.timestamp < balanceOf[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 30:
        idx = 1
        s = 0
        while idx >= 1:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 23)
            if not stor23[address(arg1)][idx]:
                if s == -1:
                    revert with 'NH{q', 17
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s + 1
                continue 
            if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not dividendsPerShareAccuracyFactor:
                revert with 'NH{q', 18
            if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
                return 0
            if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
                revert with 'NH{q', 17
            return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
    else:
        if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 45:
            idx = 2
            s = 0
            while idx >= 1:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 23)
                if not stor23[address(arg1)][idx]:
                    if s == -1:
                        revert with 'NH{q', 17
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = s + 1
                    continue 
                if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 'NH{q', 18
                if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
                    return 0
                if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
                    revert with 'NH{q', 17
                return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
        else:
            if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 60:
                idx = 3
                s = 0
                while idx >= 1:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 23)
                    if not stor23[address(arg1)][idx]:
                        if s == -1:
                            revert with 'NH{q', 17
                        if not idx:
                            revert with 'NH{q', 17
                        idx = idx - 1
                        s = s + 1
                        continue 
                    if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 'NH{q', 18
                    if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
                        return 0
                    if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
                        revert with 'NH{q', 17
                    return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
            else:
                if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 90:
                    idx = 4
                    s = 0
                    while idx >= 1:
                        mem[0] = idx
                        mem[32] = sha3(address(arg1), 23)
                        if not stor23[address(arg1)][idx]:
                            if s == -1:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            s = s + 1
                            continue 
                        if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(arg1)].field_0:
                            revert with 'NH{q', 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 'NH{q', 18
                        if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
                            return 0
                        if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
                            revert with 'NH{q', 17
                        return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
                else:
                    if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 <= 180:
                        idx = 5
                        s = 0
                        while idx >= 1:
                            mem[0] = idx
                            mem[32] = sha3(address(arg1), 23)
                            if not stor23[address(arg1)][idx]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                s = s + 1
                                continue 
                            if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(arg1)].field_0:
                                revert with 'NH{q', 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 'NH{q', 18
                            if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
                                return 0
                            if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
                                revert with 'NH{q', 17
                            return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
                    else:
                        if block.timestamp - balanceOf[address(arg1)].field_256 / stor25 > 365:
                            idx = 7
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(arg1), 23)
                                if not stor23[address(arg1)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(arg1)].field_0:
                                    revert with 'NH{q', 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 'NH{q', 18
                                if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
                                    return 0
                                if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                                return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
                        else:
                            idx = 6
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(arg1), 23)
                                if not stor23[address(arg1)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(arg1)].field_0:
                                    revert with 'NH{q', 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 'NH{q', 18
                                if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
                                    return 0
                                if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                                return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
    if balanceOf[address(arg1)].field_0 and sub_b1559aef[stor24[1]] > -1 / balanceOf[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 18
    if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor <= balanceOf[address(arg1)].field_512:
        return 0
    if balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor < balanceOf[address(arg1)].field_512:
        revert with 'NH{q', 17
    return ((balanceOf[address(arg1)].field_0 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor) - balanceOf[address(arg1)].field_512)
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(msg.sender)].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to stake during unstake period'
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient token balance to stake'
    require ext_code.size(stor17)
    call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 0, 0, stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp < balanceOf[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
        idx = 1
        s = 0
        while idx >= 1:
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 23)
            if not stor23[address(msg.sender)][idx]:
                if s == -1:
                    revert with 'NH{q', 17
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s + 1
                continue 
            if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)].field_0 += arg1
            if not balanceOf[address(msg.sender)].field_256:
                balanceOf[address(msg.sender)].field_256 = block.timestamp
            stor23[address(msg.sender)][idx] = 1
            if not sub_26d36ee5:
                revert with 'NH{q', 18
            require ext_code.size(stakeTokenAddress)
            call stakeTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 / sub_26d36ee5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 and sub_b1559aef[stor24[idx]] > -1 / arg1:
                revert with 'NH{q', 17
            if not dividendsPerShareAccuracyFactor:
                revert with 'NH{q', 18
            if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - 1:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor
            if totalShares[stor24[idx]] > -arg1 - 1:
                revert with 'NH{q', 17
            totalShares[stor24[idx]] += arg1
            require ext_code.size(stor17)
            call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args stor18, stor19, stor20, stor21, stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Stake(msg.sender, arg1);
    else:
        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
            idx = 2
            s = 0
            while idx >= 1:
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 23)
                if not stor23[address(msg.sender)][idx]:
                    if s == -1:
                        revert with 'NH{q', 17
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = s + 1
                    continue 
                if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)].field_0 += arg1
                if not balanceOf[address(msg.sender)].field_256:
                    balanceOf[address(msg.sender)].field_256 = block.timestamp
                stor23[address(msg.sender)][idx] = 1
                if not sub_26d36ee5:
                    revert with 'NH{q', 18
                require ext_code.size(stakeTokenAddress)
                call stakeTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1 / sub_26d36ee5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg1 and sub_b1559aef[stor24[idx]] > -1 / arg1:
                    revert with 'NH{q', 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 'NH{q', 18
                if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor
                if totalShares[stor24[idx]] > -arg1 - 1:
                    revert with 'NH{q', 17
                totalShares[stor24[idx]] += arg1
                require ext_code.size(stor17)
                call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor18, stor19, stor20, stor21, stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Stake(msg.sender, arg1);
        else:
            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                idx = 3
                s = 0
                while idx >= 1:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 23)
                    if not stor23[address(msg.sender)][idx]:
                        if s == -1:
                            revert with 'NH{q', 17
                        if not idx:
                            revert with 'NH{q', 17
                        idx = idx - 1
                        s = s + 1
                        continue 
                    if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)].field_0 += arg1
                    if not balanceOf[address(msg.sender)].field_256:
                        balanceOf[address(msg.sender)].field_256 = block.timestamp
                    stor23[address(msg.sender)][idx] = 1
                    if not sub_26d36ee5:
                        revert with 'NH{q', 18
                    require ext_code.size(stakeTokenAddress)
                    call stakeTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1 / sub_26d36ee5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1 and sub_b1559aef[stor24[idx]] > -1 / arg1:
                        revert with 'NH{q', 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 'NH{q', 18
                    if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor
                    if totalShares[stor24[idx]] > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalShares[stor24[idx]] += arg1
                    require ext_code.size(stor17)
                    call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor18, stor19, stor20, stor21, stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Stake(msg.sender, arg1);
            else:
                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                    idx = 4
                    s = 0
                    while idx >= 1:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 23)
                        if not stor23[address(msg.sender)][idx]:
                            if s == -1:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            s = s + 1
                            continue 
                        if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)].field_0 += arg1
                        if not balanceOf[address(msg.sender)].field_256:
                            balanceOf[address(msg.sender)].field_256 = block.timestamp
                        stor23[address(msg.sender)][idx] = 1
                        if not sub_26d36ee5:
                            revert with 'NH{q', 18
                        require ext_code.size(stakeTokenAddress)
                        call stakeTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1 / sub_26d36ee5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if arg1 and sub_b1559aef[stor24[idx]] > -1 / arg1:
                            revert with 'NH{q', 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 'NH{q', 18
                        if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor
                        if totalShares[stor24[idx]] > -arg1 - 1:
                            revert with 'NH{q', 17
                        totalShares[stor24[idx]] += arg1
                        require ext_code.size(stor17)
                        call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor18, stor19, stor20, stor21, stor22
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Stake(msg.sender, arg1);
                else:
                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                        idx = 5
                        s = 0
                        while idx >= 1:
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 23)
                            if not stor23[address(msg.sender)][idx]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                s = s + 1
                                continue 
                            if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)].field_0 += arg1
                            if not balanceOf[address(msg.sender)].field_256:
                                balanceOf[address(msg.sender)].field_256 = block.timestamp
                            stor23[address(msg.sender)][idx] = 1
                            if not sub_26d36ee5:
                                revert with 'NH{q', 18
                            require ext_code.size(stakeTokenAddress)
                            call stakeTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1 / sub_26d36ee5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if arg1 and sub_b1559aef[stor24[idx]] > -1 / arg1:
                                revert with 'NH{q', 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 'NH{q', 18
                            if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor
                            if totalShares[stor24[idx]] > -arg1 - 1:
                                revert with 'NH{q', 17
                            totalShares[stor24[idx]] += arg1
                            require ext_code.size(stor17)
                            call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor18, stor19, stor20, stor21, stor22
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Stake(msg.sender, arg1);
                    else:
                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                            idx = 7
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 23)
                                if not stor23[address(msg.sender)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)].field_0 += arg1
                                if not balanceOf[address(msg.sender)].field_256:
                                    balanceOf[address(msg.sender)].field_256 = block.timestamp
                                stor23[address(msg.sender)][idx] = 1
                                if not sub_26d36ee5:
                                    revert with 'NH{q', 18
                                require ext_code.size(stakeTokenAddress)
                                call stakeTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1 / sub_26d36ee5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if arg1 and sub_b1559aef[stor24[idx]] > -1 / arg1:
                                    revert with 'NH{q', 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 'NH{q', 18
                                if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor
                                if totalShares[stor24[idx]] > -arg1 - 1:
                                    revert with 'NH{q', 17
                                totalShares[stor24[idx]] += arg1
                                require ext_code.size(stor17)
                                call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor18, stor19, stor20, stor21, stor22
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Stake(msg.sender, arg1);
                        else:
                            idx = 6
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 23)
                                if not stor23[address(msg.sender)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)].field_0 += arg1
                                if not balanceOf[address(msg.sender)].field_256:
                                    balanceOf[address(msg.sender)].field_256 = block.timestamp
                                stor23[address(msg.sender)][idx] = 1
                                if not sub_26d36ee5:
                                    revert with 'NH{q', 18
                                require ext_code.size(stakeTokenAddress)
                                call stakeTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1 / sub_26d36ee5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if arg1 and sub_b1559aef[stor24[idx]] > -1 / arg1:
                                    revert with 'NH{q', 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 'NH{q', 18
                                if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor
                                if totalShares[stor24[idx]] > -arg1 - 1:
                                    revert with 'NH{q', 17
                                totalShares[stor24[idx]] += arg1
                                require ext_code.size(stor17)
                                call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor18, stor19, stor20, stor21, stor22
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Stake(msg.sender, arg1);
    if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)].field_0 += arg1
    if not balanceOf[address(msg.sender)].field_256:
        balanceOf[address(msg.sender)].field_256 = block.timestamp
    stor23[address(msg.sender)][1] = 1
    if not sub_26d36ee5:
        revert with 'NH{q', 18
    require ext_code.size(stakeTokenAddress)
    call stakeTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 / sub_26d36ee5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and sub_b1559aef[stor24[1]] > -1 / arg1:
        revert with 'NH{q', 17
    if not dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 18
    if balanceOf[address(msg.sender)].field_512 > -(arg1 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)].field_512 += arg1 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor
    if totalShares[stor24[1]] > -arg1 - 1:
        revert with 'NH{q', 17
    totalShares[stor24[1]] += arg1
    require ext_code.size(stor17)
    call stor17.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor18, stor19, stor20, stor21, stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Stake(msg.sender, arg1);
}

function sub_fb4af576(?) payable {
    if not balanceOf[address(msg.sender)].field_0:
        balanceOf[address(msg.sender)].field_1024 = block.timestamp
        balanceOf[address(msg.sender)].field_1280 = 1
        stor26[address(msg.sender)] = 0
    else:
        if balanceOf[address(msg.sender)].field_1280:
            balanceOf[address(msg.sender)].field_1024 = block.timestamp
            balanceOf[address(msg.sender)].field_1280 = 1
        else:
            if block.timestamp < balanceOf[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if not stor25:
                revert with 'NH{q', 18
            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                idx = 1
                s = 0
                while idx >= 1:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 23)
                    if not stor23[address(msg.sender)][idx]:
                        if s == -1:
                            revert with 'NH{q', 17
                        if not idx:
                            revert with 'NH{q', 17
                        idx = idx - 1
                        s = s + 1
                        continue 
                    if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 'NH{q', 18
                    if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                        balanceOf[address(msg.sender)].field_1024 = block.timestamp
                        balanceOf[address(msg.sender)].field_1280 = 1
                        stor26[address(msg.sender)] = 0
                    else:
                        if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)].field_1024 = block.timestamp
                        balanceOf[address(msg.sender)].field_1280 = 1
                        stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
                    if block.timestamp < balanceOf[address(msg.sender)].field_256:
                        revert with 'NH{q', 17
                    if not stor25:
                        revert with 'NH{q', 18
                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                        idx = 1
                        s = 0
                        while idx >= 1:
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 23)
                            if not stor23[address(msg.sender)][idx]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                s = s + 1
                                continue 
                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                    else:
                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                            idx = 2
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 23)
                                if not stor23[address(msg.sender)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                        else:
                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                                idx = 3
                                s = 0
                                while idx >= 1:
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 23)
                                    if not stor23[address(msg.sender)][idx]:
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if not idx:
                                            revert with 'NH{q', 17
                                        idx = idx - 1
                                        s = s + 1
                                        continue 
                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                            else:
                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                                    idx = 4
                                    s = 0
                                    while idx >= 1:
                                        mem[0] = idx
                                        mem[32] = sha3(address(msg.sender), 23)
                                        if not stor23[address(msg.sender)][idx]:
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            if not idx:
                                                revert with 'NH{q', 17
                                            idx = idx - 1
                                            s = s + 1
                                            continue 
                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                else:
                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                        idx = 5
                                        s = 0
                                        while idx >= 1:
                                            mem[0] = idx
                                            mem[32] = sha3(address(msg.sender), 23)
                                            if not stor23[address(msg.sender)][idx]:
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                if not idx:
                                                    revert with 'NH{q', 17
                                                idx = idx - 1
                                                s = s + 1
                                                continue 
                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                revert with 'NH{q', 17
                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                    else:
                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                            idx = 7
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        else:
                                            idx = 6
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                    if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
            else:
                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                    idx = 2
                    s = 0
                    while idx >= 1:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 23)
                        if not stor23[address(msg.sender)][idx]:
                            if s == -1:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            s = s + 1
                            continue 
                        if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 'NH{q', 18
                        if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                            balanceOf[address(msg.sender)].field_1024 = block.timestamp
                            balanceOf[address(msg.sender)].field_1280 = 1
                            stor26[address(msg.sender)] = 0
                        else:
                            if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)].field_1024 = block.timestamp
                            balanceOf[address(msg.sender)].field_1280 = 1
                            stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
                        if block.timestamp < balanceOf[address(msg.sender)].field_256:
                            revert with 'NH{q', 17
                        if not stor25:
                            revert with 'NH{q', 18
                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                            idx = 1
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 23)
                                if not stor23[address(msg.sender)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                        else:
                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                                idx = 2
                                s = 0
                                while idx >= 1:
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 23)
                                    if not stor23[address(msg.sender)][idx]:
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if not idx:
                                            revert with 'NH{q', 17
                                        idx = idx - 1
                                        s = s + 1
                                        continue 
                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                            else:
                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                                    idx = 3
                                    s = 0
                                    while idx >= 1:
                                        mem[0] = idx
                                        mem[32] = sha3(address(msg.sender), 23)
                                        if not stor23[address(msg.sender)][idx]:
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            if not idx:
                                                revert with 'NH{q', 17
                                            idx = idx - 1
                                            s = s + 1
                                            continue 
                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                else:
                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                                        idx = 4
                                        s = 0
                                        while idx >= 1:
                                            mem[0] = idx
                                            mem[32] = sha3(address(msg.sender), 23)
                                            if not stor23[address(msg.sender)][idx]:
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                if not idx:
                                                    revert with 'NH{q', 17
                                                idx = idx - 1
                                                s = s + 1
                                                continue 
                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                revert with 'NH{q', 17
                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                    else:
                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                            idx = 5
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        else:
                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                                idx = 7
                                                s = 0
                                                while idx >= 1:
                                                    mem[0] = idx
                                                    mem[32] = sha3(address(msg.sender), 23)
                                                    if not stor23[address(msg.sender)][idx]:
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        if not idx:
                                                            revert with 'NH{q', 17
                                                        idx = idx - 1
                                                        s = s + 1
                                                        continue 
                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                        revert with 'NH{q', 17
                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                            else:
                                                idx = 6
                                                s = 0
                                                while idx >= 1:
                                                    mem[0] = idx
                                                    mem[32] = sha3(address(msg.sender), 23)
                                                    if not stor23[address(msg.sender)][idx]:
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        if not idx:
                                                            revert with 'NH{q', 17
                                                        idx = idx - 1
                                                        s = s + 1
                                                        continue 
                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                        revert with 'NH{q', 17
                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                        if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
                else:
                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                        idx = 3
                        s = 0
                        while idx >= 1:
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 23)
                            if not stor23[address(msg.sender)][idx]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                s = s + 1
                                continue 
                            if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 'NH{q', 18
                            if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                                balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                balanceOf[address(msg.sender)].field_1280 = 1
                                stor26[address(msg.sender)] = 0
                            else:
                                if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                balanceOf[address(msg.sender)].field_1280 = 1
                                stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
                            if block.timestamp < balanceOf[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if not stor25:
                                revert with 'NH{q', 18
                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                                idx = 1
                                s = 0
                                while idx >= 1:
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 23)
                                    if not stor23[address(msg.sender)][idx]:
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if not idx:
                                            revert with 'NH{q', 17
                                        idx = idx - 1
                                        s = s + 1
                                        continue 
                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                            else:
                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                                    idx = 2
                                    s = 0
                                    while idx >= 1:
                                        mem[0] = idx
                                        mem[32] = sha3(address(msg.sender), 23)
                                        if not stor23[address(msg.sender)][idx]:
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            if not idx:
                                                revert with 'NH{q', 17
                                            idx = idx - 1
                                            s = s + 1
                                            continue 
                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                else:
                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                                        idx = 3
                                        s = 0
                                        while idx >= 1:
                                            mem[0] = idx
                                            mem[32] = sha3(address(msg.sender), 23)
                                            if not stor23[address(msg.sender)][idx]:
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                if not idx:
                                                    revert with 'NH{q', 17
                                                idx = idx - 1
                                                s = s + 1
                                                continue 
                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                revert with 'NH{q', 17
                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                    else:
                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                                            idx = 4
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        else:
                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                                idx = 5
                                                s = 0
                                                while idx >= 1:
                                                    mem[0] = idx
                                                    mem[32] = sha3(address(msg.sender), 23)
                                                    if not stor23[address(msg.sender)][idx]:
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        if not idx:
                                                            revert with 'NH{q', 17
                                                        idx = idx - 1
                                                        s = s + 1
                                                        continue 
                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                        revert with 'NH{q', 17
                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                            else:
                                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                                    idx = 7
                                                    s = 0
                                                    while idx >= 1:
                                                        mem[0] = idx
                                                        mem[32] = sha3(address(msg.sender), 23)
                                                        if not stor23[address(msg.sender)][idx]:
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            if not idx:
                                                                revert with 'NH{q', 17
                                                            idx = idx - 1
                                                            s = s + 1
                                                            continue 
                                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                            revert with 'NH{q', 17
                                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                else:
                                                    idx = 6
                                                    s = 0
                                                    while idx >= 1:
                                                        mem[0] = idx
                                                        mem[32] = sha3(address(msg.sender), 23)
                                                        if not stor23[address(msg.sender)][idx]:
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            if not idx:
                                                                revert with 'NH{q', 17
                                                            idx = idx - 1
                                                            s = s + 1
                                                            continue 
                                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                            revert with 'NH{q', 17
                                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                            if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
                    else:
                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                            idx = 4
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 23)
                                if not stor23[address(msg.sender)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 'NH{q', 18
                                if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                                    balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                    balanceOf[address(msg.sender)].field_1280 = 1
                                    stor26[address(msg.sender)] = 0
                                else:
                                    if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                    balanceOf[address(msg.sender)].field_1280 = 1
                                    stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
                                if block.timestamp < balanceOf[address(msg.sender)].field_256:
                                    revert with 'NH{q', 17
                                if not stor25:
                                    revert with 'NH{q', 18
                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                                    idx = 1
                                    s = 0
                                    while idx >= 1:
                                        mem[0] = idx
                                        mem[32] = sha3(address(msg.sender), 23)
                                        if not stor23[address(msg.sender)][idx]:
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            if not idx:
                                                revert with 'NH{q', 17
                                            idx = idx - 1
                                            s = s + 1
                                            continue 
                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                else:
                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                                        idx = 2
                                        s = 0
                                        while idx >= 1:
                                            mem[0] = idx
                                            mem[32] = sha3(address(msg.sender), 23)
                                            if not stor23[address(msg.sender)][idx]:
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                if not idx:
                                                    revert with 'NH{q', 17
                                                idx = idx - 1
                                                s = s + 1
                                                continue 
                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                revert with 'NH{q', 17
                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                    else:
                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                                            idx = 3
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        else:
                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                                                idx = 4
                                                s = 0
                                                while idx >= 1:
                                                    mem[0] = idx
                                                    mem[32] = sha3(address(msg.sender), 23)
                                                    if not stor23[address(msg.sender)][idx]:
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        if not idx:
                                                            revert with 'NH{q', 17
                                                        idx = idx - 1
                                                        s = s + 1
                                                        continue 
                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                        revert with 'NH{q', 17
                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                            else:
                                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                                    idx = 5
                                                    s = 0
                                                    while idx >= 1:
                                                        mem[0] = idx
                                                        mem[32] = sha3(address(msg.sender), 23)
                                                        if not stor23[address(msg.sender)][idx]:
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            if not idx:
                                                                revert with 'NH{q', 17
                                                            idx = idx - 1
                                                            s = s + 1
                                                            continue 
                                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                            revert with 'NH{q', 17
                                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                else:
                                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                                        idx = 7
                                                        s = 0
                                                        while idx >= 1:
                                                            mem[0] = idx
                                                            mem[32] = sha3(address(msg.sender), 23)
                                                            if not stor23[address(msg.sender)][idx]:
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                if not idx:
                                                                    revert with 'NH{q', 17
                                                                idx = idx - 1
                                                                s = s + 1
                                                                continue 
                                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                revert with 'NH{q', 17
                                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                    else:
                                                        idx = 6
                                                        s = 0
                                                        while idx >= 1:
                                                            mem[0] = idx
                                                            mem[32] = sha3(address(msg.sender), 23)
                                                            if not stor23[address(msg.sender)][idx]:
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                if not idx:
                                                                    revert with 'NH{q', 17
                                                                idx = idx - 1
                                                                s = s + 1
                                                                continue 
                                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                revert with 'NH{q', 17
                                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
                        else:
                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                idx = 5
                                s = 0
                                while idx >= 1:
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 23)
                                    if not stor23[address(msg.sender)][idx]:
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        if not idx:
                                            revert with 'NH{q', 17
                                        idx = idx - 1
                                        s = s + 1
                                        continue 
                                    if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    if not dividendsPerShareAccuracyFactor:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                                        balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                        balanceOf[address(msg.sender)].field_1280 = 1
                                        stor26[address(msg.sender)] = 0
                                    else:
                                        if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                        balanceOf[address(msg.sender)].field_1280 = 1
                                        stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
                                    if block.timestamp < balanceOf[address(msg.sender)].field_256:
                                        revert with 'NH{q', 17
                                    if not stor25:
                                        revert with 'NH{q', 18
                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                                        idx = 1
                                        s = 0
                                        while idx >= 1:
                                            mem[0] = idx
                                            mem[32] = sha3(address(msg.sender), 23)
                                            if not stor23[address(msg.sender)][idx]:
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                if not idx:
                                                    revert with 'NH{q', 17
                                                idx = idx - 1
                                                s = s + 1
                                                continue 
                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                revert with 'NH{q', 17
                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                    else:
                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                                            idx = 2
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        else:
                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                                                idx = 3
                                                s = 0
                                                while idx >= 1:
                                                    mem[0] = idx
                                                    mem[32] = sha3(address(msg.sender), 23)
                                                    if not stor23[address(msg.sender)][idx]:
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        if not idx:
                                                            revert with 'NH{q', 17
                                                        idx = idx - 1
                                                        s = s + 1
                                                        continue 
                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                        revert with 'NH{q', 17
                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                            else:
                                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                                                    idx = 4
                                                    s = 0
                                                    while idx >= 1:
                                                        mem[0] = idx
                                                        mem[32] = sha3(address(msg.sender), 23)
                                                        if not stor23[address(msg.sender)][idx]:
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            if not idx:
                                                                revert with 'NH{q', 17
                                                            idx = idx - 1
                                                            s = s + 1
                                                            continue 
                                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                            revert with 'NH{q', 17
                                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                else:
                                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                                        idx = 5
                                                        s = 0
                                                        while idx >= 1:
                                                            mem[0] = idx
                                                            mem[32] = sha3(address(msg.sender), 23)
                                                            if not stor23[address(msg.sender)][idx]:
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                if not idx:
                                                                    revert with 'NH{q', 17
                                                                idx = idx - 1
                                                                s = s + 1
                                                                continue 
                                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                revert with 'NH{q', 17
                                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                    else:
                                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                                            idx = 7
                                                            s = 0
                                                            while idx >= 1:
                                                                mem[0] = idx
                                                                mem[32] = sha3(address(msg.sender), 23)
                                                                if not stor23[address(msg.sender)][idx]:
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    if not idx:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx - 1
                                                                    s = s + 1
                                                                    continue 
                                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                    revert with 'NH{q', 17
                                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                        else:
                                                            idx = 6
                                                            s = 0
                                                            while idx >= 1:
                                                                mem[0] = idx
                                                                mem[32] = sha3(address(msg.sender), 23)
                                                                if not stor23[address(msg.sender)][idx]:
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    if not idx:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx - 1
                                                                    s = s + 1
                                                                    continue 
                                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                    revert with 'NH{q', 17
                                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                    if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
                                        revert with 'NH{q', 17
                                    totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
                            else:
                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                    idx = 7
                                    s = 0
                                    while idx >= 1:
                                        mem[0] = idx
                                        mem[32] = sha3(address(msg.sender), 23)
                                        if not stor23[address(msg.sender)][idx]:
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            if not idx:
                                                revert with 'NH{q', 17
                                            idx = idx - 1
                                            s = s + 1
                                            continue 
                                        if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        if not dividendsPerShareAccuracyFactor:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                                            balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                            balanceOf[address(msg.sender)].field_1280 = 1
                                            stor26[address(msg.sender)] = 0
                                        else:
                                            if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                            balanceOf[address(msg.sender)].field_1280 = 1
                                            stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
                                        if block.timestamp < balanceOf[address(msg.sender)].field_256:
                                            revert with 'NH{q', 17
                                        if not stor25:
                                            revert with 'NH{q', 18
                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                                            idx = 1
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        else:
                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                                                idx = 2
                                                s = 0
                                                while idx >= 1:
                                                    mem[0] = idx
                                                    mem[32] = sha3(address(msg.sender), 23)
                                                    if not stor23[address(msg.sender)][idx]:
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        if not idx:
                                                            revert with 'NH{q', 17
                                                        idx = idx - 1
                                                        s = s + 1
                                                        continue 
                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                        revert with 'NH{q', 17
                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                            else:
                                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                                                    idx = 3
                                                    s = 0
                                                    while idx >= 1:
                                                        mem[0] = idx
                                                        mem[32] = sha3(address(msg.sender), 23)
                                                        if not stor23[address(msg.sender)][idx]:
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            if not idx:
                                                                revert with 'NH{q', 17
                                                            idx = idx - 1
                                                            s = s + 1
                                                            continue 
                                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                            revert with 'NH{q', 17
                                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                else:
                                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                                                        idx = 4
                                                        s = 0
                                                        while idx >= 1:
                                                            mem[0] = idx
                                                            mem[32] = sha3(address(msg.sender), 23)
                                                            if not stor23[address(msg.sender)][idx]:
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                if not idx:
                                                                    revert with 'NH{q', 17
                                                                idx = idx - 1
                                                                s = s + 1
                                                                continue 
                                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                revert with 'NH{q', 17
                                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                    else:
                                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                                            idx = 5
                                                            s = 0
                                                            while idx >= 1:
                                                                mem[0] = idx
                                                                mem[32] = sha3(address(msg.sender), 23)
                                                                if not stor23[address(msg.sender)][idx]:
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    if not idx:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx - 1
                                                                    s = s + 1
                                                                    continue 
                                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                    revert with 'NH{q', 17
                                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                        else:
                                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                                                idx = 7
                                                                s = 0
                                                                while idx >= 1:
                                                                    mem[0] = idx
                                                                    mem[32] = sha3(address(msg.sender), 23)
                                                                    if not stor23[address(msg.sender)][idx]:
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        if not idx:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx - 1
                                                                        s = s + 1
                                                                        continue 
                                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                        revert with 'NH{q', 17
                                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                            else:
                                                                idx = 6
                                                                s = 0
                                                                while idx >= 1:
                                                                    mem[0] = idx
                                                                    mem[32] = sha3(address(msg.sender), 23)
                                                                    if not stor23[address(msg.sender)][idx]:
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        if not idx:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx - 1
                                                                        s = s + 1
                                                                        continue 
                                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                        revert with 'NH{q', 17
                                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
                                else:
                                    idx = 6
                                    s = 0
                                    while idx >= 1:
                                        mem[0] = idx
                                        mem[32] = sha3(address(msg.sender), 23)
                                        if not stor23[address(msg.sender)][idx]:
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            if not idx:
                                                revert with 'NH{q', 17
                                            idx = idx - 1
                                            s = s + 1
                                            continue 
                                        if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[idx]] > -1 / balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        if not dividendsPerShareAccuracyFactor:
                                            revert with 'NH{q', 18
                                        if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                                            balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                            balanceOf[address(msg.sender)].field_1280 = 1
                                            stor26[address(msg.sender)] = 0
                                        else:
                                            if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)].field_1024 = block.timestamp
                                            balanceOf[address(msg.sender)].field_1280 = 1
                                            stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[idx]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
                                        if block.timestamp < balanceOf[address(msg.sender)].field_256:
                                            revert with 'NH{q', 17
                                        if not stor25:
                                            revert with 'NH{q', 18
                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
                                            idx = 1
                                            s = 0
                                            while idx >= 1:
                                                mem[0] = idx
                                                mem[32] = sha3(address(msg.sender), 23)
                                                if not stor23[address(msg.sender)][idx]:
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    if not idx:
                                                        revert with 'NH{q', 17
                                                    idx = idx - 1
                                                    s = s + 1
                                                    continue 
                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                    revert with 'NH{q', 17
                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        else:
                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
                                                idx = 2
                                                s = 0
                                                while idx >= 1:
                                                    mem[0] = idx
                                                    mem[32] = sha3(address(msg.sender), 23)
                                                    if not stor23[address(msg.sender)][idx]:
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        if not idx:
                                                            revert with 'NH{q', 17
                                                        idx = idx - 1
                                                        s = s + 1
                                                        continue 
                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                        revert with 'NH{q', 17
                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                            else:
                                                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                                                    idx = 3
                                                    s = 0
                                                    while idx >= 1:
                                                        mem[0] = idx
                                                        mem[32] = sha3(address(msg.sender), 23)
                                                        if not stor23[address(msg.sender)][idx]:
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            if not idx:
                                                                revert with 'NH{q', 17
                                                            idx = idx - 1
                                                            s = s + 1
                                                            continue 
                                                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                            revert with 'NH{q', 17
                                                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                else:
                                                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                                                        idx = 4
                                                        s = 0
                                                        while idx >= 1:
                                                            mem[0] = idx
                                                            mem[32] = sha3(address(msg.sender), 23)
                                                            if not stor23[address(msg.sender)][idx]:
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                if not idx:
                                                                    revert with 'NH{q', 17
                                                                idx = idx - 1
                                                                s = s + 1
                                                                continue 
                                                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                revert with 'NH{q', 17
                                                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                    else:
                                                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                                                            idx = 5
                                                            s = 0
                                                            while idx >= 1:
                                                                mem[0] = idx
                                                                mem[32] = sha3(address(msg.sender), 23)
                                                                if not stor23[address(msg.sender)][idx]:
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    if not idx:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx - 1
                                                                    s = s + 1
                                                                    continue 
                                                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                    revert with 'NH{q', 17
                                                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                        else:
                                                            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                                                                idx = 7
                                                                s = 0
                                                                while idx >= 1:
                                                                    mem[0] = idx
                                                                    mem[32] = sha3(address(msg.sender), 23)
                                                                    if not stor23[address(msg.sender)][idx]:
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        if not idx:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx - 1
                                                                        s = s + 1
                                                                        continue 
                                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                        revert with 'NH{q', 17
                                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                                            else:
                                                                idx = 6
                                                                s = 0
                                                                while idx >= 1:
                                                                    mem[0] = idx
                                                                    mem[32] = sha3(address(msg.sender), 23)
                                                                    if not stor23[address(msg.sender)][idx]:
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        if not idx:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx - 1
                                                                        s = s + 1
                                                                        continue 
                                                                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                                                        revert with 'NH{q', 17
                                                                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                                        if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
                                            revert with 'NH{q', 17
                                        totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
            if balanceOf[address(msg.sender)].field_0 and sub_b1559aef[stor24[1]] > -1 / balanceOf[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not dividendsPerShareAccuracyFactor:
                revert with 'NH{q', 18
            if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor <= balanceOf[address(msg.sender)].field_512:
                balanceOf[address(msg.sender)].field_1024 = block.timestamp
                balanceOf[address(msg.sender)].field_1280 = 1
                stor26[address(msg.sender)] = 0
            else:
                if balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor < balanceOf[address(msg.sender)].field_512:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)].field_1024 = block.timestamp
                balanceOf[address(msg.sender)].field_1280 = 1
                stor26[address(msg.sender)] = (balanceOf[address(msg.sender)].field_0 * sub_b1559aef[stor24[1]] / dividendsPerShareAccuracyFactor) - balanceOf[address(msg.sender)].field_512
    if block.timestamp < balanceOf[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not stor25:
        revert with 'NH{q', 18
    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 30:
        idx = 1
        s = 0
        while idx >= 1:
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 23)
            if not stor23[address(msg.sender)][idx]:
                if s == -1:
                    revert with 'NH{q', 17
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s + 1
                continue 
            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
    else:
        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 45:
            idx = 2
            s = 0
            while idx >= 1:
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 23)
                if not stor23[address(msg.sender)][idx]:
                    if s == -1:
                        revert with 'NH{q', 17
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = s + 1
                    continue 
                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
        else:
            if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 60:
                idx = 3
                s = 0
                while idx >= 1:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 23)
                    if not stor23[address(msg.sender)][idx]:
                        if s == -1:
                            revert with 'NH{q', 17
                        if not idx:
                            revert with 'NH{q', 17
                        idx = idx - 1
                        s = s + 1
                        continue 
                    if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
            else:
                if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 90:
                    idx = 4
                    s = 0
                    while idx >= 1:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 23)
                        if not stor23[address(msg.sender)][idx]:
                            if s == -1:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            s = s + 1
                            continue 
                        if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                else:
                    if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 <= 180:
                        idx = 5
                        s = 0
                        while idx >= 1:
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 23)
                            if not stor23[address(msg.sender)][idx]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                s = s + 1
                                continue 
                            if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                    else:
                        if block.timestamp - balanceOf[address(msg.sender)].field_256 / stor25 > 365:
                            idx = 7
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 23)
                                if not stor23[address(msg.sender)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
                        else:
                            idx = 6
                            s = 0
                            while idx >= 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 23)
                                if not stor23[address(msg.sender)][idx]:
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if not idx:
                                        revert with 'NH{q', 17
                                    idx = idx - 1
                                    s = s + 1
                                    continue 
                                if totalShares[stor24[idx]] < balanceOf[address(msg.sender)].field_0:
                                    revert with 'NH{q', 17
                                totalShares[stor24[idx]] -= balanceOf[address(msg.sender)].field_0
    if totalShares[stor24[1]] < balanceOf[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    totalShares[stor24[1]] -= balanceOf[address(msg.sender)].field_0
}



}
