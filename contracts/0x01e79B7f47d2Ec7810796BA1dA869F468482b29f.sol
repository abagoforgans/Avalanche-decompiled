contract main {




// =====================  Runtime code  =====================


#
#  - sub_2219a21e(?)
#  - sub_52b9dc15(?)
#
address owner;
address stor1;
address stor2;
uint256 sub_511ff46c;
uint256 sub_21ac6ac6;
uint256 sub_f8cfaf53;
uint256 sub_36182e88;
uint256 sub_d2b43ffc;
uint256 sub_2915d5db;
uint256 currentBid;
uint256 jackpot;
uint256 sub_4d91e1f7;
address currentKingAddress;
uint256 stor12;
array of struct sub_5a8ade48;
array of address sub_f540a13d;
address stor15;
address stor16;
array of uint256 stor18;
array of uint256 sub_06f6a017;
uint256 stor23;

function sub_06f6a017(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_06f6a017[arg1]
}

function sub_21ac6ac6(?) payable {
    return sub_21ac6ac6
}

function sub_2915d5db(?) payable {
    return sub_2915d5db
}

function sub_36182e88(?) payable {
    return sub_36182e88
}

function sub_4d91e1f7(?) payable {
    return sub_4d91e1f7
}

function sub_511ff46c(?) payable {
    return sub_511ff46c
}

function sub_5a8ade48(?) payable {
    return sub_5a8ade48[address(stor12)].field_0, 
           sub_5a8ade48[address(stor12)].field_256,
           sub_5a8ade48[address(stor12)].field_512,
           sub_5a8ade48[address(stor12)].field_768
}

function jackpot() payable {
    return jackpot
}

function owner() payable {
    return owner
}

function sub_d2b43ffc(?) payable {
    return sub_d2b43ffc
}

function currentBid() payable {
    return currentBid
}

function sub_f540a13d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_f540a13d[arg1]
}

function currentKing() payable {
    return address(currentKingAddress)
}

function sub_f8cfaf53(?) payable {
    return sub_f8cfaf53
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6136ac07(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_5a8ade48[address(arg1)].field_768:
        return 0
    if sub_5a8ade48[address(arg1)].field_768 > -sub_21ac6ac6 - 1:
        revert with 'NH{q', 17
    if sub_5a8ade48[address(arg1)].field_768 + sub_21ac6ac6 < sub_5a8ade48[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_5a8ade48[address(arg1)].field_768 + sub_21ac6ac6)
}

function sub_fbdf0594(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if jackpot > -arg1 - 1:
        revert with 'NH{q', 17
    jackpot += arg1
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1250d011(?) payable {
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0x14988eea00000000000000000000000000000000000000000000000000000000
    mem[196] = address(currentKingAddress)
    require ext_code.size(stor1)
    staticcall stor1.0x14988eea with:
            gas gas_remaining wei
           args address(currentKingAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[192 len 4], Mask(224, 0, stor12)
    require mem[192 len 4], Mask(224, 0, stor12) <= test266151307()
    require return_data.size - mem[192 len 4], Mask(224, 0, stor12) >= 96
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 288
    _7 = mem[mem[192 len 4], Mask(224, 0, stor12) + 192]
    require mem[mem[192 len 4], Mask(224, 0, stor12) + 192] <= test266151307()
    require mem[192 len 4], Mask(224, 0, stor12) + mem[mem[192 len 4], Mask(224, 0, stor12) + 192] + 223 < return_data.size + 192
    _8 = mem[mem[192 len 4], Mask(224, 0, stor12) + mem[mem[192 len 4], Mask(224, 0, stor12) + 192] + 192]
    if mem[mem[192 len 4], Mask(224, 0, stor12) + mem[mem[192 len 4], Mask(224, 0, stor12) + 192] + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(mem[mem[192 len 4], Mask(224, 0, stor12) + mem[mem[192 len 4], Mask(224, 0, stor12) + 192] + 192]) + 320 > test266151307() or ceil32(mem[mem[192 len 4], Mask(224, 0, stor12) + mem[mem[192 len 4], Mask(224, 0, stor12) + 192] + 192]) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[192 len 4], Mask(224, 0, stor12) + mem[mem[192 len 4], Mask(224, 0, stor12) + 192] + 192]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[192 len 4], Mask(224, 0, stor12) + mem[mem[192 len 4], Mask(224, 0, stor12) + 192] + 192]
    require mem[192 len 4], Mask(224, 0, stor12) + _7 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_8)] = mem[mem[192 len 4], Mask(224, 0, stor12) + _7 + 224 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + 288
        require mem[_5 + 224] == mem[_5 + 224]
        mem[ceil32(return_data.size) + 224] = mem[_5 + 224]
        require mem[_5 + 256] == bool(mem[_5 + 256])
        mem[ceil32(return_data.size) + 256] = mem[_5 + 256]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _44 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 160 len ceil32(_44)] = mem[ceil32(return_data.size) + 320 len ceil32(_44)]
        if ceil32(_44) > _44:
            mem[mem[64] + _44 + 160] = 0
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 96] = bool(mem[ceil32(return_data.size) + 256])
        return 32, 96, mem[mem[64] + 64 len ceil32(_44) + 96]
    mem[ceil32(return_data.size) + _8 + 320] = 0
    mem[ceil32(return_data.size) + 192] = ceil32(return_data.size) + 288
    require mem[_5 + 224] == mem[_5 + 224]
    mem[ceil32(return_data.size) + 224] = mem[_5 + 224]
    require mem[_5 + 256] == bool(mem[_5 + 256])
    mem[ceil32(return_data.size) + 256] = mem[_5 + 256]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    _45 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 160 len ceil32(_45)] = mem[ceil32(return_data.size) + 320 len ceil32(_45)]
    if ceil32(_45) > _45:
        mem[mem[64] + _45 + 160] = 0
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = bool(mem[ceil32(return_data.size) + 256])
    return 32, 96, mem[mem[64] + 64 len ceil32(_45) + 96]
}

function claimReward() payable {
    if block.timestamp < sub_2915d5db:
        revert with 0, 'Game is not over'
    if jackpot <= 0:
        revert with 0, 'jackpot is empty'
    if sub_5a8ade48[address(stor12)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < sub_5a8ade48[address(stor12)].field_512:
        revert with 'NH{q', 17
    if sub_5a8ade48[address(stor12)].field_0 > -block.timestamp + sub_5a8ade48[address(stor12)].field_512 - 1:
        revert with 'NH{q', 17
    if sub_5a8ade48[address(stor12)].field_0 + block.timestamp - sub_5a8ade48[address(stor12)].field_512 < sub_5a8ade48[address(stor12)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_5a8ade48[address(stor12)].field_0 = sub_5a8ade48[address(stor12)].field_0 + block.timestamp - sub_5a8ade48[address(stor12)].field_512
    idx = 0
    while idx < 5:
        if sub_f540a13d[idx] != address(currentKingAddress):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        s = 0
        while s < 5:
            if sub_06f6a017[s] >= sub_5a8ade48[address(stor12)].field_0:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx < s:
                if idx >= 5:
                    revert with 'NH{q', 50
                sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
            else:
                t = idx
                while t > s:
                    if t < 1:
                        revert with 'NH{q', 17
                    if t - 1 >= 5:
                        revert with 'NH{q', 50
                    if t >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[t] = stor18[t]
                    if t < 1:
                        revert with 'NH{q', 17
                    if t - 1 >= 5:
                        revert with 'NH{q', 50
                    if t >= 5:
                        revert with 'NH{q', 50
                    sub_f540a13d[t] = sub_5a8ade48[t].field_0
                    if not t:
                        revert with 'NH{q', 17
                    t = t - 1
                    continue 
                if s >= 5:
                    revert with 'NH{q', 50
                sub_06f6a017[s] = sub_5a8ade48[address(stor12)].field_0
                sub_f540a13d[s] = address(currentKingAddress)
            if currentBid > -jackpot - 1:
                revert with 'NH{q', 17
            if currentBid + jackpot < currentBid:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), currentBid + jackpot
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not currentBid:
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor2, 0
            else:
                if currentBid and sub_36182e88 > -1 / currentBid:
                    revert with 'NH{q', 17
                if not currentBid:
                    revert with 'NH{q', 18
                if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor2, currentBid * sub_36182e88 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_36182e88 > -sub_f8cfaf53 - 1:
                revert with 'NH{q', 17
            if 100 < sub_36182e88 + sub_f8cfaf53:
                revert with 'NH{q', 17
            if not currentBid:
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(currentKingAddress), 0
            else:
                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                    revert with 'NH{q', 17
                if not currentBid:
                    revert with 'NH{q', 18
                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not currentBid:
                if jackpot > -1:
                    revert with 'NH{q', 17
                if jackpot < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if currentBid and sub_f8cfaf53 > -1 / currentBid:
                    revert with 'NH{q', 17
                if not currentBid:
                    revert with 'NH{q', 18
                if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                    revert with 0, 'SafeMath: multiplication overflow'
                if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                    revert with 'NH{q', 17
                if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
                jackpot += currentBid * sub_f8cfaf53 / 100
            if not jackpot:
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), sub_f540a13d.length, 0
            else:
                if jackpot and 50 > -1 / jackpot:
                    revert with 'NH{q', 17
                if not jackpot:
                    revert with 'NH{q', 18
                if 50 * jackpot / jackpot != 50:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), sub_f540a13d.length, 50 * jackpot / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not jackpot:
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor15, 0
            else:
                if jackpot and 30 > -1 / jackpot:
                    revert with 'NH{q', 17
                if not jackpot:
                    revert with 'NH{q', 18
                if 30 * jackpot / jackpot != 30:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor15, 30 * jackpot / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not jackpot:
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor16, 0
            else:
                if jackpot and 20 > -1 / jackpot:
                    revert with 'NH{q', 17
                if not jackpot:
                    revert with 'NH{q', 18
                if 20 * jackpot / jackpot != 20:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor16, 20 * jackpot / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            jackpot = 0
            currentBid = 10^18
            address(currentKingAddress) = 0
        if idx < s:
            if idx >= 5:
                revert with 'NH{q', 50
            sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
        else:
            t = idx
            while t > s:
                if t < 1:
                    revert with 'NH{q', 17
                if t - 1 >= 5:
                    revert with 'NH{q', 50
                if t >= 5:
                    revert with 'NH{q', 50
                sub_06f6a017[t] = stor18[t]
                if t < 1:
                    revert with 'NH{q', 17
                if t - 1 >= 5:
                    revert with 'NH{q', 50
                if t >= 5:
                    revert with 'NH{q', 50
                sub_f540a13d[t] = sub_5a8ade48[t].field_0
                if not t:
                    revert with 'NH{q', 17
                t = t - 1
                continue 
            if s >= 5:
                revert with 'NH{q', 50
            sub_06f6a017[s] = sub_5a8ade48[address(stor12)].field_0
            sub_f540a13d[s] = address(currentKingAddress)
        if currentBid > -jackpot - 1:
            revert with 'NH{q', 17
        if currentBid + jackpot < currentBid:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), currentBid + jackpot
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not currentBid:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor2, 0
        else:
            if currentBid and sub_36182e88 > -1 / currentBid:
                revert with 'NH{q', 17
            if not currentBid:
                revert with 'NH{q', 18
            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor2, currentBid * sub_36182e88 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_36182e88 > -sub_f8cfaf53 - 1:
            revert with 'NH{q', 17
        if 100 < sub_36182e88 + sub_f8cfaf53:
            revert with 'NH{q', 17
        if not currentBid:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(currentKingAddress), 0
        else:
            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                revert with 'NH{q', 17
            if not currentBid:
                revert with 'NH{q', 18
            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not currentBid:
            if jackpot > -1:
                revert with 'NH{q', 17
            if jackpot < jackpot:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if currentBid and sub_f8cfaf53 > -1 / currentBid:
                revert with 'NH{q', 17
            if not currentBid:
                revert with 'NH{q', 18
            if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                revert with 0, 'SafeMath: multiplication overflow'
            if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                revert with 'NH{q', 17
            if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                revert with 0, 'SafeMath: addition overflow'
            jackpot += currentBid * sub_f8cfaf53 / 100
        if not jackpot:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), sub_f540a13d.length, 0
        else:
            if jackpot and 50 > -1 / jackpot:
                revert with 'NH{q', 17
            if not jackpot:
                revert with 'NH{q', 18
            if 50 * jackpot / jackpot != 50:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), sub_f540a13d.length, 50 * jackpot / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not jackpot:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor15, 0
        else:
            if jackpot and 30 > -1 / jackpot:
                revert with 'NH{q', 17
            if not jackpot:
                revert with 'NH{q', 18
            if 30 * jackpot / jackpot != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor15, 30 * jackpot / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not jackpot:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor16, 0
        else:
            if jackpot and 20 > -1 / jackpot:
                revert with 'NH{q', 17
            if not jackpot:
                revert with 'NH{q', 18
            if 20 * jackpot / jackpot != 20:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor16, 20 * jackpot / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        jackpot = 0
        currentBid = 10^18
        address(currentKingAddress) = 0
    idx = 0
    while idx < 5:
        if sub_06f6a017[idx] >= sub_5a8ade48[address(stor12)].field_0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        s = 4
        while s > idx:
            if s < 1:
                revert with 'NH{q', 17
            if s - 1 >= 5:
                revert with 'NH{q', 50
            if s >= 5:
                revert with 'NH{q', 50
            sub_06f6a017[s] = stor18[s]
            if s < 1:
                revert with 'NH{q', 17
            if s - 1 >= 5:
                revert with 'NH{q', 50
            if s >= 5:
                revert with 'NH{q', 50
            sub_f540a13d[s] = sub_5a8ade48[s].field_0
            if not s:
                revert with 'NH{q', 17
            s = s - 1
            continue 
        if idx < 4:
            sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
            sub_f540a13d[idx] = address(currentKingAddress)
        else:
            if stor23 < sub_5a8ade48[address(stor12)].field_0:
                if idx >= 5:
                    revert with 'NH{q', 50
                sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                sub_f540a13d[idx] = address(currentKingAddress)
        if currentBid > -jackpot - 1:
            revert with 'NH{q', 17
        if currentBid + jackpot < currentBid:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), currentBid + jackpot
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not currentBid:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor2, 0
        else:
            if currentBid and sub_36182e88 > -1 / currentBid:
                revert with 'NH{q', 17
            if not currentBid:
                revert with 'NH{q', 18
            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor2, currentBid * sub_36182e88 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_36182e88 > -sub_f8cfaf53 - 1:
            revert with 'NH{q', 17
        if 100 < sub_36182e88 + sub_f8cfaf53:
            revert with 'NH{q', 17
        if not currentBid:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(currentKingAddress), 0
        else:
            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                revert with 'NH{q', 17
            if not currentBid:
                revert with 'NH{q', 18
            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not currentBid:
            if jackpot > -1:
                revert with 'NH{q', 17
            if jackpot < jackpot:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if currentBid and sub_f8cfaf53 > -1 / currentBid:
                revert with 'NH{q', 17
            if not currentBid:
                revert with 'NH{q', 18
            if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                revert with 0, 'SafeMath: multiplication overflow'
            if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                revert with 'NH{q', 17
            if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                revert with 0, 'SafeMath: addition overflow'
            jackpot += currentBid * sub_f8cfaf53 / 100
        if not jackpot:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), sub_f540a13d.length, 0
        else:
            if jackpot and 50 > -1 / jackpot:
                revert with 'NH{q', 17
            if not jackpot:
                revert with 'NH{q', 18
            if 50 * jackpot / jackpot != 50:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), sub_f540a13d.length, 50 * jackpot / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not jackpot:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor15, 0
        else:
            if jackpot and 30 > -1 / jackpot:
                revert with 'NH{q', 17
            if not jackpot:
                revert with 'NH{q', 18
            if 30 * jackpot / jackpot != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor15, 30 * jackpot / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not jackpot:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor16, 0
        else:
            if jackpot and 20 > -1 / jackpot:
                revert with 'NH{q', 17
            if not jackpot:
                revert with 'NH{q', 18
            if 20 * jackpot / jackpot != 20:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor16, 20 * jackpot / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        jackpot = 0
        currentBid = 10^18
        address(currentKingAddress) = 0
    s = 4
    while s > idx:
        if s < 1:
            revert with 'NH{q', 17
        if s - 1 >= 5:
            revert with 'NH{q', 50
        if s >= 5:
            revert with 'NH{q', 50
        sub_06f6a017[s] = stor18[s]
        if s < 1:
            revert with 'NH{q', 17
        if s - 1 >= 5:
            revert with 'NH{q', 50
        if s >= 5:
            revert with 'NH{q', 50
        sub_f540a13d[s] = sub_5a8ade48[s].field_0
        if not s:
            revert with 'NH{q', 17
        s = s - 1
        continue 
    if idx < 4:
        sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
        sub_f540a13d[idx] = address(currentKingAddress)
    else:
        if stor23 < sub_5a8ade48[address(stor12)].field_0:
            if idx >= 5:
                revert with 'NH{q', 50
            sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
            sub_f540a13d[idx] = address(currentKingAddress)
    if currentBid > -jackpot - 1:
        revert with 'NH{q', 17
    if currentBid + jackpot < currentBid:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), currentBid + jackpot
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not currentBid:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor2, 0
    else:
        if currentBid and sub_36182e88 > -1 / currentBid:
            revert with 'NH{q', 17
        if not currentBid:
            revert with 'NH{q', 18
        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor2, currentBid * sub_36182e88 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_36182e88 > -sub_f8cfaf53 - 1:
        revert with 'NH{q', 17
    if 100 < sub_36182e88 + sub_f8cfaf53:
        revert with 'NH{q', 17
    if not currentBid:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(currentKingAddress), 0
    else:
        if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
            revert with 'NH{q', 17
        if not currentBid:
            revert with 'NH{q', 18
        if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not currentBid:
        if jackpot > -1:
            revert with 'NH{q', 17
        if jackpot < jackpot:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if currentBid and sub_f8cfaf53 > -1 / currentBid:
            revert with 'NH{q', 17
        if not currentBid:
            revert with 'NH{q', 18
        if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
            revert with 0, 'SafeMath: multiplication overflow'
        if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
            revert with 'NH{q', 17
        if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
            revert with 0, 'SafeMath: addition overflow'
        jackpot += currentBid * sub_f8cfaf53 / 100
    if not jackpot:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), sub_f540a13d.length, 0
    else:
        if jackpot and 50 > -1 / jackpot:
            revert with 'NH{q', 17
        if not jackpot:
            revert with 'NH{q', 18
        if 50 * jackpot / jackpot != 50:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), sub_f540a13d.length, 50 * jackpot / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not jackpot:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor15, 0
    else:
        if jackpot and 30 > -1 / jackpot:
            revert with 'NH{q', 17
        if not jackpot:
            revert with 'NH{q', 18
        if 30 * jackpot / jackpot != 30:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor15, 30 * jackpot / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not jackpot:
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor16, 0
    else:
        if jackpot and 20 > -1 / jackpot:
            revert with 'NH{q', 17
        if not jackpot:
            revert with 'NH{q', 18
        if 20 * jackpot / jackpot != 20:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor16, 20 * jackpot / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    jackpot = 0
    currentBid = 10^18
    address(currentKingAddress) = 0
}

function sub_c6f6fbad(?) payable {
    if block.timestamp >= sub_2915d5db:
        revert with 0, 'Game is over'
    if address(currentKingAddress) == msg.sender:
        revert with 0, 'You still are the king.'
    if currentBid > -1000000000000000001:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = currentBid + 10^18
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), currentBid + 10^18
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.sender == address(currentKingAddress):
        revert with 0, 'You still are the king.'
    mem[ceil32(return_data.size) + 96] = 0x14988eea00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x14988eea with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _14 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 >= 96
    if not bool((2 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + 192
    _16 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _17 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + 96]) + 224 > test266151307() or ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + 96]) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + 96]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _17
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + _16 + _17 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(_17)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + _16 + 128 len ceil32(_17)]
    if ceil32(_17) <= _17:
        mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 192
        require mem[ceil32(return_data.size) + _14 + 128] == mem[ceil32(return_data.size) + _14 + 128]
        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + _14 + 128]
        require mem[ceil32(return_data.size) + _14 + 160] == bool(mem[ceil32(return_data.size) + _14 + 160])
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _14 + 160]
        if not mem[(2 * ceil32(return_data.size)) + 160]:
            revert with 0, 'You need to register first.'
        if block.timestamp < sub_5a8ade48[address(msg.sender)].field_256:
            revert with 0, 'You still need recovery'
        if address(currentKingAddress):
            if sub_5a8ade48[address(stor12)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < sub_5a8ade48[address(stor12)].field_512:
                revert with 'NH{q', 17
            if sub_5a8ade48[address(stor12)].field_0 > -block.timestamp + sub_5a8ade48[address(stor12)].field_512 - 1:
                revert with 'NH{q', 17
            if sub_5a8ade48[address(stor12)].field_0 + block.timestamp - sub_5a8ade48[address(stor12)].field_512 < sub_5a8ade48[address(stor12)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            sub_5a8ade48[address(stor12)].field_0 = sub_5a8ade48[address(stor12)].field_0 + block.timestamp - sub_5a8ade48[address(stor12)].field_512
            mem[0] = address(currentKingAddress)
            mem[32] = 13
            idx = 0
            while idx < 5:
                if sub_f540a13d[idx] != address(currentKingAddress):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                s = 0
                while s < 5:
                    if sub_06f6a017[s] >= sub_5a8ade48[address(stor12)].field_0:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx < s:
                        if idx >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_575] == bool(mem[_575])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _713 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_713] == bool(mem[_713])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _941 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_941] == bool(mem[_941])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1070 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1070] == bool(mem[_1070])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_775] == bool(mem[_775])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1069 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1069] == bool(mem[_1069])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1190 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1190] == bool(mem[_1190])
                    else:
                        t = idx
                        while t > s:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 >= 5:
                                revert with 'NH{q', 50
                            if t >= 5:
                                revert with 'NH{q', 50
                            sub_06f6a017[t] = stor18[t]
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 >= 5:
                                revert with 'NH{q', 50
                            if t >= 5:
                                revert with 'NH{q', 50
                            sub_f540a13d[t] = sub_5a8ade48[t].field_0
                            if not t:
                                revert with 'NH{q', 17
                            t = t - 1
                            continue 
                        if s >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[s] = sub_5a8ade48[address(stor12)].field_0
                        sub_f540a13d[s] = address(currentKingAddress)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2504 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2504] == bool(mem[_2504])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2618 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2618] == bool(mem[_2618])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2806 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2806] == bool(mem[_2806])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2904 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2904] == bool(mem[_2904])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2666] == bool(mem[_2666])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2903 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2903] == bool(mem[_2903])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2998 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2998] == bool(mem[_2998])
                    if not currentBid:
                        if jackpot > -1:
                            revert with 'NH{q', 17
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if currentBid and sub_f8cfaf53 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                            revert with 'NH{q', 17
                        if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += currentBid * sub_f8cfaf53 / 100
                    address(currentKingAddress) = msg.sender
                    sub_5a8ade48[address(stor12)].field_512 = block.timestamp
                    if currentBid <= sub_4d91e1f7:
                        if currentBid + 10^18 < currentBid:
                            revert with 0, 'SafeMath: addition overflow'
                        currentBid += 10^18
                    emit 0xfac4a0e2: address(currentKingAddress)
                if idx < s:
                    if idx >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_561] == bool(mem[_561])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_691] == bool(mem[_691])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_903] == bool(mem[_903])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1034 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1034] == bool(mem[_1034])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _761 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_761] == bool(mem[_761])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1033 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1033] == bool(mem[_1033])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1165 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1165] == bool(mem[_1165])
                else:
                    t = idx
                    while t > s:
                        if t < 1:
                            revert with 'NH{q', 17
                        if t - 1 >= 5:
                            revert with 'NH{q', 50
                        if t >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[t] = stor18[t]
                        if t < 1:
                            revert with 'NH{q', 17
                        if t - 1 >= 5:
                            revert with 'NH{q', 50
                        if t >= 5:
                            revert with 'NH{q', 50
                        sub_f540a13d[t] = sub_5a8ade48[t].field_0
                        if not t:
                            revert with 'NH{q', 17
                        t = t - 1
                        continue 
                    if s >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[s] = sub_5a8ade48[address(stor12)].field_0
                    sub_f540a13d[s] = address(currentKingAddress)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2503] == bool(mem[_2503])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2617] == bool(mem[_2617])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2805 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2805] == bool(mem[_2805])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2902 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2902] == bool(mem[_2902])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2665] == bool(mem[_2665])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2901 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2901] == bool(mem[_2901])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2997 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2997] == bool(mem[_2997])
                if not currentBid:
                    if jackpot > -1:
                        revert with 'NH{q', 17
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if currentBid and sub_f8cfaf53 > -1 / currentBid:
                        revert with 'NH{q', 17
                    if not currentBid:
                        revert with 'NH{q', 18
                    if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                        revert with 'NH{q', 17
                    if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += currentBid * sub_f8cfaf53 / 100
                address(currentKingAddress) = msg.sender
                sub_5a8ade48[address(stor12)].field_512 = block.timestamp
                if currentBid <= sub_4d91e1f7:
                    if currentBid + 10^18 < currentBid:
                        revert with 0, 'SafeMath: addition overflow'
                    currentBid += 10^18
                emit 0xfac4a0e2: address(currentKingAddress)
            idx = 0
            while idx < 5:
                if sub_06f6a017[idx] >= sub_5a8ade48[address(stor12)].field_0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                s = 4
                while s > idx:
                    if s < 1:
                        revert with 'NH{q', 17
                    if s - 1 >= 5:
                        revert with 'NH{q', 50
                    if s >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[s] = stor18[s]
                    if s < 1:
                        revert with 'NH{q', 17
                    if s - 1 >= 5:
                        revert with 'NH{q', 50
                    if s >= 5:
                        revert with 'NH{q', 50
                    sub_f540a13d[s] = sub_5a8ade48[s].field_0
                    if not s:
                        revert with 'NH{q', 17
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                    sub_f540a13d[idx] = address(currentKingAddress)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2510] == bool(mem[_2510])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2624] == bool(mem[_2624])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2812] == bool(mem[_2812])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2916 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2916] == bool(mem[_2916])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2672] == bool(mem[_2672])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2915] == bool(mem[_2915])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3006 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3006] == bool(mem[_3006])
                else:
                    if stor23 >= sub_5a8ade48[address(stor12)].field_0:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2509 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2509] == bool(mem[_2509])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2623 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2623] == bool(mem[_2623])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2811 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2811] == bool(mem[_2811])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2914 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2914] == bool(mem[_2914])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2671 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2671] == bool(mem[_2671])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2913 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2913] == bool(mem[_2913])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3004 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3004] == bool(mem[_3004])
                    else:
                        if idx >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                        sub_f540a13d[idx] = address(currentKingAddress)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2529] == bool(mem[_2529])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2641] == bool(mem[_2641])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2833 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2833] == bool(mem[_2833])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2950 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2950] == bool(mem[_2950])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2689] == bool(mem[_2689])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2949 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2949] == bool(mem[_2949])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3039 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3039] == bool(mem[_3039])
                if not currentBid:
                    if jackpot > -1:
                        revert with 'NH{q', 17
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if currentBid and sub_f8cfaf53 > -1 / currentBid:
                        revert with 'NH{q', 17
                    if not currentBid:
                        revert with 'NH{q', 18
                    if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                        revert with 'NH{q', 17
                    if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += currentBid * sub_f8cfaf53 / 100
                address(currentKingAddress) = msg.sender
                sub_5a8ade48[address(stor12)].field_512 = block.timestamp
                if currentBid <= sub_4d91e1f7:
                    if currentBid + 10^18 < currentBid:
                        revert with 0, 'SafeMath: addition overflow'
                    currentBid += 10^18
                emit 0xfac4a0e2: address(currentKingAddress)
            s = 4
            while s > idx:
                if s < 1:
                    revert with 'NH{q', 17
                if s - 1 >= 5:
                    revert with 'NH{q', 50
                if s >= 5:
                    revert with 'NH{q', 50
                sub_06f6a017[s] = stor18[s]
                if s < 1:
                    revert with 'NH{q', 17
                if s - 1 >= 5:
                    revert with 'NH{q', 50
                if s >= 5:
                    revert with 'NH{q', 50
                sub_f540a13d[s] = sub_5a8ade48[s].field_0
                if not s:
                    revert with 'NH{q', 17
                s = s - 1
                continue 
            if idx < 4:
                sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                sub_f540a13d[idx] = address(currentKingAddress)
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = currentBid
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), currentBid
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2508 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2508] == bool(mem[_2508])
                if not currentBid:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor2
                    mem[mem[64] + 68] = 0
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor2, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2622] == bool(mem[_2622])
                    if sub_36182e88 > -sub_f8cfaf53 - 1:
                        revert with 'NH{q', 17
                    if 100 < sub_36182e88 + sub_f8cfaf53:
                        revert with 'NH{q', 17
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2810] == bool(mem[_2810])
                    else:
                        if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2912] == bool(mem[_2912])
                else:
                    if currentBid and sub_36182e88 > -1 / currentBid:
                        revert with 'NH{q', 17
                    if not currentBid:
                        revert with 'NH{q', 18
                    if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor2
                    mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor2, currentBid * sub_36182e88 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2670] == bool(mem[_2670])
                    if sub_36182e88 > -sub_f8cfaf53 - 1:
                        revert with 'NH{q', 17
                    if 100 < sub_36182e88 + sub_f8cfaf53:
                        revert with 'NH{q', 17
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2911 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2911] == bool(mem[_2911])
                    else:
                        if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3003 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3003] == bool(mem[_3003])
            else:
                if stor23 >= sub_5a8ade48[address(stor12)].field_0:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2507] == bool(mem[_2507])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2621] == bool(mem[_2621])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2809 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2809] == bool(mem[_2809])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2910] == bool(mem[_2910])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2669 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2669] == bool(mem[_2669])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2909] == bool(mem[_2909])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3001 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3001] == bool(mem[_3001])
                else:
                    if idx >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                    sub_f540a13d[idx] = address(currentKingAddress)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2526] == bool(mem[_2526])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2638] == bool(mem[_2638])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2830] == bool(mem[_2830])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2944] == bool(mem[_2944])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2686 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2686] == bool(mem[_2686])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2943 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2943] == bool(mem[_2943])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3032 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3032] == bool(mem[_3032])
            if not currentBid:
                if jackpot > -1:
                    revert with 'NH{q', 17
                if jackpot < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if currentBid and sub_f8cfaf53 > -1 / currentBid:
                    revert with 'NH{q', 17
                if not currentBid:
                    revert with 'NH{q', 18
                if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                    revert with 0, 'SafeMath: multiplication overflow'
                if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                    revert with 'NH{q', 17
                if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
                jackpot += currentBid * sub_f8cfaf53 / 100
    else:
        mem[(2 * ceil32(return_data.size)) + _17 + 224] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 192
        require mem[ceil32(return_data.size) + _14 + 128] == mem[ceil32(return_data.size) + _14 + 128]
        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + _14 + 128]
        require mem[ceil32(return_data.size) + _14 + 160] == bool(mem[ceil32(return_data.size) + _14 + 160])
        mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _14 + 160]
        if not mem[(2 * ceil32(return_data.size)) + 160]:
            revert with 0, 'You need to register first.'
        if block.timestamp < sub_5a8ade48[address(msg.sender)].field_256:
            revert with 0, 'You still need recovery'
        if address(currentKingAddress):
            if sub_5a8ade48[address(stor12)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < sub_5a8ade48[address(stor12)].field_512:
                revert with 'NH{q', 17
            if sub_5a8ade48[address(stor12)].field_0 > -block.timestamp + sub_5a8ade48[address(stor12)].field_512 - 1:
                revert with 'NH{q', 17
            if sub_5a8ade48[address(stor12)].field_0 + block.timestamp - sub_5a8ade48[address(stor12)].field_512 < sub_5a8ade48[address(stor12)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            sub_5a8ade48[address(stor12)].field_0 = sub_5a8ade48[address(stor12)].field_0 + block.timestamp - sub_5a8ade48[address(stor12)].field_512
            mem[0] = address(currentKingAddress)
            mem[32] = 13
            idx = 0
            while idx < 5:
                if sub_f540a13d[idx] != address(currentKingAddress):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                s = 0
                while s < 5:
                    if sub_06f6a017[s] >= sub_5a8ade48[address(stor12)].field_0:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx < s:
                        if idx >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_580] == bool(mem[_580])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_718] == bool(mem[_718])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _946 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_946] == bool(mem[_946])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1080 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1080] == bool(mem[_1080])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _780 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_780] == bool(mem[_780])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1079 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1079] == bool(mem[_1079])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1201 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1201] == bool(mem[_1201])
                    else:
                        t = idx
                        while t > s:
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 >= 5:
                                revert with 'NH{q', 50
                            if t >= 5:
                                revert with 'NH{q', 50
                            sub_06f6a017[t] = stor18[t]
                            if t < 1:
                                revert with 'NH{q', 17
                            if t - 1 >= 5:
                                revert with 'NH{q', 50
                            if t >= 5:
                                revert with 'NH{q', 50
                            sub_f540a13d[t] = sub_5a8ade48[t].field_0
                            if not t:
                                revert with 'NH{q', 17
                            t = t - 1
                            continue 
                        if s >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[s] = sub_5a8ade48[address(stor12)].field_0
                        sub_f540a13d[s] = address(currentKingAddress)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2506 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2506] == bool(mem[_2506])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2620 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2620] == bool(mem[_2620])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2808 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2808] == bool(mem[_2808])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2908 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2908] == bool(mem[_2908])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2668] == bool(mem[_2668])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2907 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2907] == bool(mem[_2907])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3000 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3000] == bool(mem[_3000])
                    if not currentBid:
                        if jackpot > -1:
                            revert with 'NH{q', 17
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if currentBid and sub_f8cfaf53 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                            revert with 'NH{q', 17
                        if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += currentBid * sub_f8cfaf53 / 100
                    address(currentKingAddress) = msg.sender
                    sub_5a8ade48[address(stor12)].field_512 = block.timestamp
                    if currentBid <= sub_4d91e1f7:
                        if currentBid + 10^18 < currentBid:
                            revert with 0, 'SafeMath: addition overflow'
                        currentBid += 10^18
                    emit 0xfac4a0e2: address(currentKingAddress)
                if idx < s:
                    if idx >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_562] == bool(mem[_562])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_692] == bool(mem[_692])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _904 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_904] == bool(mem[_904])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1036 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1036] == bool(mem[_1036])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_762] == bool(mem[_762])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1035 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1035] == bool(mem[_1035])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1170 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1170] == bool(mem[_1170])
                else:
                    t = idx
                    while t > s:
                        if t < 1:
                            revert with 'NH{q', 17
                        if t - 1 >= 5:
                            revert with 'NH{q', 50
                        if t >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[t] = stor18[t]
                        if t < 1:
                            revert with 'NH{q', 17
                        if t - 1 >= 5:
                            revert with 'NH{q', 50
                        if t >= 5:
                            revert with 'NH{q', 50
                        sub_f540a13d[t] = sub_5a8ade48[t].field_0
                        if not t:
                            revert with 'NH{q', 17
                        t = t - 1
                        continue 
                    if s >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[s] = sub_5a8ade48[address(stor12)].field_0
                    sub_f540a13d[s] = address(currentKingAddress)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2505] == bool(mem[_2505])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2619] == bool(mem[_2619])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2807 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2807] == bool(mem[_2807])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2906] == bool(mem[_2906])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2667] == bool(mem[_2667])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2905] == bool(mem[_2905])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2999 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2999] == bool(mem[_2999])
                if not currentBid:
                    if jackpot > -1:
                        revert with 'NH{q', 17
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if currentBid and sub_f8cfaf53 > -1 / currentBid:
                        revert with 'NH{q', 17
                    if not currentBid:
                        revert with 'NH{q', 18
                    if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                        revert with 'NH{q', 17
                    if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += currentBid * sub_f8cfaf53 / 100
                address(currentKingAddress) = msg.sender
                sub_5a8ade48[address(stor12)].field_512 = block.timestamp
                if currentBid <= sub_4d91e1f7:
                    if currentBid + 10^18 < currentBid:
                        revert with 0, 'SafeMath: addition overflow'
                    currentBid += 10^18
                emit 0xfac4a0e2: address(currentKingAddress)
            idx = 0
            while idx < 5:
                if sub_06f6a017[idx] >= sub_5a8ade48[address(stor12)].field_0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                s = 4
                while s > idx:
                    if s < 1:
                        revert with 'NH{q', 17
                    if s - 1 >= 5:
                        revert with 'NH{q', 50
                    if s >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[s] = stor18[s]
                    if s < 1:
                        revert with 'NH{q', 17
                    if s - 1 >= 5:
                        revert with 'NH{q', 50
                    if s >= 5:
                        revert with 'NH{q', 50
                    sub_f540a13d[s] = sub_5a8ade48[s].field_0
                    if not s:
                        revert with 'NH{q', 17
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                    sub_f540a13d[idx] = address(currentKingAddress)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2514] == bool(mem[_2514])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2628] == bool(mem[_2628])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2816] == bool(mem[_2816])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2924 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2924] == bool(mem[_2924])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2676 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2676] == bool(mem[_2676])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2923 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2923] == bool(mem[_2923])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3012 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3012] == bool(mem[_3012])
                else:
                    if stor23 >= sub_5a8ade48[address(stor12)].field_0:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2513 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2513] == bool(mem[_2513])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2627] == bool(mem[_2627])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2815 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2815] == bool(mem[_2815])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2922 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2922] == bool(mem[_2922])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2675 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2675] == bool(mem[_2675])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2921 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2921] == bool(mem[_2921])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3010 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3010] == bool(mem[_3010])
                    else:
                        if idx >= 5:
                            revert with 'NH{q', 50
                        sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                        sub_f540a13d[idx] = address(currentKingAddress)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = currentBid
                        require ext_code.size(stor2)
                        call stor2.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), currentBid
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2535] == bool(mem[_2535])
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2647] == bool(mem[_2647])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2841 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2841] == bool(mem[_2841])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2962 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2962] == bool(mem[_2962])
                        else:
                            if currentBid and sub_36182e88 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor2
                            mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), stor2, currentBid * sub_36182e88 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2695 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2695] == bool(mem[_2695])
                            if sub_36182e88 > -sub_f8cfaf53 - 1:
                                revert with 'NH{q', 17
                            if 100 < sub_36182e88 + sub_f8cfaf53:
                                revert with 'NH{q', 17
                            if not currentBid:
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = 0
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2961 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2961] == bool(mem[_2961])
                            else:
                                if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                    revert with 'NH{q', 17
                                if not currentBid:
                                    revert with 'NH{q', 18
                                if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(currentKingAddress)
                                mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                require ext_code.size(stor2)
                                call stor2.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3053 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3053] == bool(mem[_3053])
                if not currentBid:
                    if jackpot > -1:
                        revert with 'NH{q', 17
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if currentBid and sub_f8cfaf53 > -1 / currentBid:
                        revert with 'NH{q', 17
                    if not currentBid:
                        revert with 'NH{q', 18
                    if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                        revert with 'NH{q', 17
                    if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += currentBid * sub_f8cfaf53 / 100
                address(currentKingAddress) = msg.sender
                sub_5a8ade48[address(stor12)].field_512 = block.timestamp
                if currentBid <= sub_4d91e1f7:
                    if currentBid + 10^18 < currentBid:
                        revert with 0, 'SafeMath: addition overflow'
                    currentBid += 10^18
                emit 0xfac4a0e2: address(currentKingAddress)
            s = 4
            while s > idx:
                if s < 1:
                    revert with 'NH{q', 17
                if s - 1 >= 5:
                    revert with 'NH{q', 50
                if s >= 5:
                    revert with 'NH{q', 50
                sub_06f6a017[s] = stor18[s]
                if s < 1:
                    revert with 'NH{q', 17
                if s - 1 >= 5:
                    revert with 'NH{q', 50
                if s >= 5:
                    revert with 'NH{q', 50
                sub_f540a13d[s] = sub_5a8ade48[s].field_0
                if not s:
                    revert with 'NH{q', 17
                s = s - 1
                continue 
            if idx < 4:
                sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                sub_f540a13d[idx] = address(currentKingAddress)
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = currentBid
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), currentBid
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2512 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2512] == bool(mem[_2512])
                if not currentBid:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor2
                    mem[mem[64] + 68] = 0
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor2, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2626] == bool(mem[_2626])
                    if sub_36182e88 > -sub_f8cfaf53 - 1:
                        revert with 'NH{q', 17
                    if 100 < sub_36182e88 + sub_f8cfaf53:
                        revert with 'NH{q', 17
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2814] == bool(mem[_2814])
                    else:
                        if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2920 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2920] == bool(mem[_2920])
                else:
                    if currentBid and sub_36182e88 > -1 / currentBid:
                        revert with 'NH{q', 17
                    if not currentBid:
                        revert with 'NH{q', 18
                    if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor2
                    mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor2, currentBid * sub_36182e88 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2674 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2674] == bool(mem[_2674])
                    if sub_36182e88 > -sub_f8cfaf53 - 1:
                        revert with 'NH{q', 17
                    if 100 < sub_36182e88 + sub_f8cfaf53:
                        revert with 'NH{q', 17
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2919 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2919] == bool(mem[_2919])
                    else:
                        if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(currentKingAddress)
                        mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3009 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3009] == bool(mem[_3009])
            else:
                if stor23 >= sub_5a8ade48[address(stor12)].field_0:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2511] == bool(mem[_2511])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2625] == bool(mem[_2625])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2813 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2813] == bool(mem[_2813])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2918 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2918] == bool(mem[_2918])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2673] == bool(mem[_2673])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2917] == bool(mem[_2917])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3007 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3007] == bool(mem[_3007])
                else:
                    if idx >= 5:
                        revert with 'NH{q', 50
                    sub_06f6a017[idx] = sub_5a8ade48[address(stor12)].field_0
                    sub_f540a13d[idx] = address(currentKingAddress)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = currentBid
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), currentBid
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2532] == bool(mem[_2532])
                    if not currentBid:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = 0
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2644] == bool(mem[_2644])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2838 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2838] == bool(mem[_2838])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2956 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2956] == bool(mem[_2956])
                    else:
                        if currentBid and sub_36182e88 > -1 / currentBid:
                            revert with 'NH{q', 17
                        if not currentBid:
                            revert with 'NH{q', 18
                        if currentBid * sub_36182e88 / currentBid != sub_36182e88:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor2
                        mem[mem[64] + 68] = currentBid * sub_36182e88 / 100
                        require ext_code.size(stor2)
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor2, currentBid * sub_36182e88 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2692] == bool(mem[_2692])
                        if sub_36182e88 > -sub_f8cfaf53 - 1:
                            revert with 'NH{q', 17
                        if 100 < sub_36182e88 + sub_f8cfaf53:
                            revert with 'NH{q', 17
                        if not currentBid:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = 0
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2955 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2955] == bool(mem[_2955])
                        else:
                            if currentBid and -sub_36182e88 + -sub_f8cfaf53 + 100 > -1 / currentBid:
                                revert with 'NH{q', 17
                            if not currentBid:
                                revert with 'NH{q', 18
                            if (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / currentBid != -sub_36182e88 + -sub_f8cfaf53 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(currentKingAddress)
                            mem[mem[64] + 68] = (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            require ext_code.size(stor2)
                            call stor2.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(currentKingAddress), (100 * currentBid) - (sub_36182e88 * currentBid) - (sub_f8cfaf53 * currentBid) / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3046 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3046] == bool(mem[_3046])
            if not currentBid:
                if jackpot > -1:
                    revert with 'NH{q', 17
                if jackpot < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if currentBid and sub_f8cfaf53 > -1 / currentBid:
                    revert with 'NH{q', 17
                if not currentBid:
                    revert with 'NH{q', 18
                if currentBid * sub_f8cfaf53 / currentBid != sub_f8cfaf53:
                    revert with 0, 'SafeMath: multiplication overflow'
                if jackpot > -(currentBid * sub_f8cfaf53 / 100) - 1:
                    revert with 'NH{q', 17
                if jackpot + (currentBid * sub_f8cfaf53 / 100) < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
                jackpot += currentBid * sub_f8cfaf53 / 100
    address(currentKingAddress) = msg.sender
    sub_5a8ade48[address(stor12)].field_512 = block.timestamp
    if currentBid <= sub_4d91e1f7:
        if currentBid + 10^18 < currentBid:
            revert with 0, 'SafeMath: addition overflow'
        currentBid += 10^18
    emit 0xfac4a0e2: address(currentKingAddress)
}



}
