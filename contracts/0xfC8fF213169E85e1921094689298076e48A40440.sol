contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
address sub_4c1a0012Address;
uint256 sub_9beeba1b;
uint256 sub_0185e491;
uint256 sub_b00cbdec;
uint256 sub_1f6d15bd;
uint256 sub_03bb5f02;
uint256 sub_bab3384d;
uint256 sub_116be18e;
uint256 sub_902367aa;
uint16 sub_433804d3; offset 40
uint64 sub_05973b1d;
array of struct stor19;

function sub_0185e491(?) payable {
    return sub_0185e491
}

function sub_03bb5f02(?) payable {
    return sub_03bb5f02
}

function sub_05973b1d(?) payable {
    return sub_05973b1d
}

function sub_116be18e(?) payable {
    return sub_116be18e
}

function totalSupply() payable {
    return totalSupply
}

function sub_1f6d15bd(?) payable {
    return sub_1f6d15bd
}

function sub_433804d3(?) payable {
    return sub_433804d3
}

function sub_4c1a0012(?) payable {
    return sub_4c1a0012Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_902367aa(?) payable {
    return sub_902367aa
}

function sub_9beeba1b(?) payable {
    return sub_9beeba1b
}

function sub_b00cbdec(?) payable {
    return sub_b00cbdec
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function sub_bab3384d(?) payable {
    return sub_bab3384d
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_00f75f7c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 / 100 and sub_1f6d15bd > -1 / arg1 / 100:
        revert with 'NH{q', 17
    return (arg1 / 100 * sub_1f6d15bd)
}

function sub_c00b346e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 / 100 and sub_902367aa > -1 / arg1 / 100:
        revert with 'NH{q', 17
    return (arg1 / 100 * sub_902367aa)
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor6[address(arg1)] = 1
}

function sub_43293ac5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 100001
    return stor19[arg1].field_0, stor19[arg1].field_0, stor19[arg1].field_0, stor19[arg1].field_0, stor19[arg1].field_136
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    stor6[address(arg1)] = 0
}

function sub_5ab30dee(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b00cbdec = arg1
    sub_1f6d15bd = arg2
    sub_03bb5f02 = arg3
    sub_9beeba1b = arg4
    sub_0185e491 = arg5
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

function sub_75752291(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor6[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
    emit Minted(address(arg1), arg2);
}

function sub_36d1f8a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor6[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if arg1 >= 100001:
        revert with 'NH{q', 50
    if stor19[arg1].field_0 <= 0:
        revert with 0, 'NOT STAKED'
    if arg2 <= 0:
        revert with 0, 'NOTHING TO FEED'
    if arg2 / 10^18 % 281474976710656 > -stor19[arg1].field_88 + test266151307():
        revert with 'NH{q', 17
    if arg1 >= 100001:
        revert with 'NH{q', 50
    stor19[arg1].field_88 = (arg2 / 10^18 % 281474976710656) + stor19[arg1].field_88 % 281474976710656
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
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
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_1e54ad00(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor6[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'NOT ENOUGH EGG'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
    emit Burned(address(arg1), arg2);
}

function sub_40f964dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 100001:
        revert with 'NH{q', 50
    if stor19[arg1].field_0 <= 0:
        return 0
    if sub_0185e491 and stor19[arg1].field_0 / 100 % 16777216 > -1 / sub_0185e491:
        revert with 'NH{q', 17
    if sub_0185e491 * stor19[arg1].field_0 / 100 % 16777216 > -sub_9beeba1b - 1:
        revert with 'NH{q', 17
    if block.timestamp < stor19[arg1].field_24:
        revert with 'NH{q', 17
    if block.timestamp - stor19[arg1].field_0 and (sub_0185e491 * stor19[arg1].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600 > -1 / block.timestamp - stor19[arg1].field_0:
        revert with 'NH{q', 17
    return ((block.timestamp * (sub_0185e491 * stor19[arg1].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[arg1].field_0 * (sub_0185e491 * stor19[arg1].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600))
}

function sub_06125cb9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= 100001:
        revert with 'NH{q', 50
    if not stor19[arg1].field_0:
        revert with 0, 'NOT STAKED'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'NOT ENOUGH EGG IN WALLET'
    if stor19[arg1].field_0 / 100 and sub_1f6d15bd > -1 / stor19[arg1].field_0 / 100:
        revert with 'NH{q', 17
    if arg2 < stor19[arg1].field_0 / 100 * sub_1f6d15bd:
        revert with 0, 'NOT ENOUGH EGG TO SKIP'
    if stor19[arg1].field_56 > -sub_03bb5f02 - 1:
        revert with 'NH{q', 17
    if stor19[arg1].field_56 + sub_03bb5f02 > uint32(block.timestamp):
        revert with 0, 'BLOCKED BY 24HR COOLDOWN'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'NOT ENOUGH EGG'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, msg.sender, 0);
    emit Burned(msg.sender, arg2);
    if arg1 >= 100001:
        revert with 'NH{q', 50
    stor19[arg1].field_56 = uint32(block.timestamp)
    stor19[arg1].field_136 = uint32(block.timestamp)
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
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_060df8c4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx <= arg2:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _15 = mem[_14]
        require mem[_14] == mem[_14 + 12 len 20]
        if mem[_14 + 12 len 20]:
            if arg3 and 10^18 > -1 / arg3:
                revert with 'NH{q', 17
            if not mem[_14 + 12 len 20]:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > (-1 * 10^18 * arg3) - 1:
                revert with 'NH{q', 17
            totalSupply += 10^18 * arg3
            mem[0] = mem[_14 + 12 len 20]
            mem[32] = 0
            if balanceOf[mem[0]] > (-1 * 10^18 * arg3) - 1:
                revert with 'NH{q', 17
            balanceOf[mem[0]] += 10^18 * arg3
            mem[mem[64]] = 10^18 * arg3
            emit Transfer((10^18 * arg3), 0, address(_15));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_8b100bc5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_116be18e:
        if sub_bab3384d and 1 > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        return sub_bab3384d
    if not arg1 / 100:
        if sub_bab3384d and 0 > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        else:
            return 0
    if arg1 / 100 == 1:
        if sub_bab3384d and 1 > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        return sub_bab3384d
    if arg1 / 100 == 2:
        if sub_116be18e > 255:
            revert with 'NH{q', 17
        if 2^sub_116be18e > -1:
            revert with 'NH{q', 17
        if sub_bab3384d and 2^sub_116be18e > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        return (sub_bab3384d * 2^sub_116be18e)
    if arg1 / 100 < 11 and sub_116be18e < 78 or arg1 / 100 < 307 and sub_116be18e < 32:
        if (arg1 / 100)^sub_116be18e > -1:
            revert with 'NH{q', 17
        if sub_bab3384d and (arg1 / 100)^sub_116be18e > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        return (sub_bab3384d * (arg1 / 100)^sub_116be18e)
    s = arg1 / 100
    t = 1
    idx = sub_116be18e
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if sub_bab3384d and t * s > -1 / sub_bab3384d:
        revert with 'NH{q', 17
    return (sub_bab3384d * t * s)
}

function unstake(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == mem[_19 + 12 len 20]
        if mem[_19 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        if cd[((32 * idx) + arg1 + 36)] >= 100001:
            revert with 'NH{q', 50
        _22 = mem[64]
        mem[64] = mem[64] + 160
        mem[_22] = stor19[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_22 + 32] = stor19[cd[((32 * idx) + arg1 + 36)]].field_24
        mem[_22 + 64] = stor19[cd[((32 * idx) + arg1 + 36)]].field_56
        mem[_22 + 96] = stor19[cd[((32 * idx) + arg1 + 36)]].field_88
        mem[_22 + 128] = stor19[cd[((32 * idx) + arg1 + 36)]].field_136
        if stor19[cd[((32 * idx) + arg1 + 36)]].field_0 > 0:
            if sub_05973b1d < stor19[cd[((32 * idx) + arg1 + 36)]].field_0:
                revert with 'NH{q', 17
            sub_05973b1d = sub_05973b1d - stor19[cd[((32 * idx) + arg1 + 36)]].field_0 % 1099511627776
            if sub_433804d3 < 1:
                revert with 'NH{q', 17
            sub_433804d3 = uint16(sub_433804d3 - 1)
            mem[_22] = 0
            if cd[((32 * idx) + arg1 + 36)] >= 100001:
                revert with 'NH{q', 50
            stor19[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
            stor19[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = block.timestamp
            emit 0x69f6d6e6: cd[((32 * idx) + arg1 + 36)], block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4791284b(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'NO CHIKN'
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_23]
        require mem[_23] == mem[_23]
        if mem[_23] >= 100001:
            revert with 'NH{q', 50
        _25 = mem[64]
        mem[64] = mem[64] + 160
        mem[_25] = stor19[_24].field_0
        mem[_25 + 32] = stor19[_24].field_24
        mem[_25 + 64] = stor19[_24].field_56
        mem[_25 + 96] = stor19[_24].field_88
        mem[_25 + 128] = stor19[_24].field_136
        if stor19[_24].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if _24 >= 100001:
            revert with 'NH{q', 50
        _27 = mem[64]
        mem[64] = mem[64] + 160
        mem[_27] = stor19[_24].field_0
        mem[_27 + 32] = stor19[_24].field_24
        mem[_27 + 64] = stor19[_24].field_56
        mem[_27 + 96] = stor19[_24].field_88
        mem[_27 + 128] = stor19[_24].field_136
        if stor19[_24].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if sub_0185e491 and stor19[_24].field_0 / 100 % 16777216 > -1 / sub_0185e491:
            revert with 'NH{q', 17
        if sub_0185e491 * stor19[_24].field_0 / 100 % 16777216 > -sub_9beeba1b - 1:
            revert with 'NH{q', 17
        if block.timestamp < stor19[_24].field_24:
            revert with 'NH{q', 17
        if block.timestamp - stor19[_24].field_0 and (sub_0185e491 * stor19[_24].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600 > -1 / block.timestamp - stor19[_24].field_0:
            revert with 'NH{q', 17
        if (block.timestamp * (sub_0185e491 * stor19[_24].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[_24].field_0 * (sub_0185e491 * stor19[_24].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > (-1 * block.timestamp * (sub_0185e491 * stor19[_24].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) + (stor19[_24].field_0 * (sub_0185e491 * stor19[_24].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (block.timestamp * (sub_0185e491 * stor19[_24].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[_24].field_0 * (sub_0185e491 * stor19[_24].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600)
        continue 
    return s
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_f8645753(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 100001:
        revert with 'NH{q', 50
    if stor19[arg1].field_0 <= 0:
        revert with 0, 'NOT STAKED'
    if not sub_116be18e:
        if sub_bab3384d and 1 > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        if stor19[arg1].field_88 < sub_bab3384d:
            revert with 0, 'MORE FOOD REQD'
    else:
        if not stor19[arg1].field_0 / 100:
            if sub_bab3384d and 0 > -1 / sub_bab3384d:
                revert with 'NH{q', 17
            if stor19[arg1].field_88 < 0:
                revert with 0, 'MORE FOOD REQD'
        else:
            if stor19[arg1].field_0 / 100 == 1:
                if sub_bab3384d and 1 > -1 / sub_bab3384d:
                    revert with 'NH{q', 17
                if stor19[arg1].field_88 < sub_bab3384d:
                    revert with 0, 'MORE FOOD REQD'
            else:
                if stor19[arg1].field_0 / 100 == 2:
                    if sub_116be18e > 255:
                        revert with 'NH{q', 17
                    if 2^sub_116be18e > -1:
                        revert with 'NH{q', 17
                    if sub_bab3384d and 2^sub_116be18e > -1 / sub_bab3384d:
                        revert with 'NH{q', 17
                    if stor19[arg1].field_88 < sub_bab3384d * 2^sub_116be18e:
                        revert with 0, 'MORE FOOD REQD'
                else:
                    if stor19[arg1].field_0 / 100 < 11 and sub_116be18e < 78 or stor19[arg1].field_0 / 100 < 307 and sub_116be18e < 32:
                        if (stor19[arg1].field_0 / 100)^sub_116be18e > -1:
                            revert with 'NH{q', 17
                        if sub_bab3384d and (stor19[arg1].field_0 / 100)^sub_116be18e > -1 / sub_bab3384d:
                            revert with 'NH{q', 17
                        if stor19[arg1].field_0 < sub_bab3384d * (stor19[arg1].field_0 / 100)^sub_116be18e:
                            revert with 0, 'MORE FOOD REQD'
                    else:
                        s = stor19[arg1].field_0 / 100
                        t = 1
                        idx = sub_116be18e
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if sub_bab3384d and t * s > -1 / sub_bab3384d:
                            revert with 'NH{q', 17
                        if stor19[arg1].field_88 < sub_bab3384d * t * s:
                            revert with 0, 'MORE FOOD REQD'
    if block.timestamp < stor19[arg1].field_136:
        revert with 0, 'COOLDOWN NOT MET'
    if stor19[arg1].field_0 > 16777115:
        revert with 'NH{q', 17
    if stor19[arg1].field_0 + 100 % 16777216 / 100 and sub_902367aa > -1 / stor19[arg1].field_0 + 100 % 16777216 / 100:
        revert with 'NH{q', 17
    if block.timestamp > (-1 * stor19[arg1].field_0 + 100 % 16777216 / 100 * sub_902367aa) - 1:
        revert with 'NH{q', 17
    if arg1 >= 100001:
        revert with 'NH{q', 50
    stor19[arg1].field_0 = stor19[arg1].field_0 + 100 % 16777216
    stor19[arg1].field_88 = 0
    stor19[arg1].field_256 = 0
    stor19[arg1].field_136 = uint32(block.timestamp + (stor19[arg1].field_0 + 100 % 16777216 / 100 * sub_902367aa))
    if sub_05973b1d > test266151307():
        revert with 'NH{q', 17
    sub_05973b1d = sub_05973b1d + 100 % 1099511627776
    require ext_code.size(sub_4c1a0012Address)
    call sub_4c1a0012Address.0xf33d627f with:
         gas gas_remaining wei
        args arg1, stor19[arg1].field_0 + 100 % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5a8c2642(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_4c1a0012Address)
            staticcall sub_4c1a0012Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _42 = mem[_40]
            require mem[_40] == mem[_40]
            if mem[_40] >= 100001:
                revert with 'NH{q', 50
            _44 = mem[64]
            mem[64] = mem[64] + 160
            mem[_44] = stor19[_42].field_0
            mem[_44 + 32] = stor19[_42].field_24
            mem[_44 + 64] = stor19[_42].field_56
            mem[_44 + 96] = stor19[_42].field_88
            mem[_44 + 128] = stor19[_42].field_136
            if stor19[_42].field_0 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = _42
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _32 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return 32, mem[mem[64] + 32 len (32 * _32) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_41]
        require mem[_41] == mem[_41]
        if mem[_41] >= 100001:
            revert with 'NH{q', 50
        _46 = mem[64]
        mem[64] = mem[64] + 160
        mem[_46] = stor19[_43].field_0
        mem[_46 + 32] = stor19[_43].field_24
        mem[_46 + 64] = stor19[_43].field_56
        mem[_46 + 96] = stor19[_43].field_88
        mem[_46 + 128] = stor19[_43].field_136
        if stor19[_43].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * s) + ceil32(return_data.size) + 128] = _43
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _33 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return 32, mem[mem[64] + 32 len (32 * _33) + 32]
}

function sub_46da8ac9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx <= arg2:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _36 = mem[_35]
        require mem[_35] == mem[_35 + 12 len 20]
        if idx >= 100001:
            revert with 'NH{q', 50
        _37 = mem[64]
        mem[64] = mem[64] + 160
        mem[_37] = stor19[idx].field_0
        mem[_37 + 32] = stor19[idx].field_24
        mem[_37 + 64] = stor19[idx].field_56
        mem[_37 + 96] = stor19[idx].field_88
        mem[_37 + 128] = stor19[idx].field_136
        if stor19[idx].field_0 > 0:
            if idx >= 100001:
                revert with 'NH{q', 50
            _39 = mem[64]
            mem[64] = mem[64] + 160
            mem[_39] = stor19[idx].field_0
            mem[_39 + 32] = stor19[idx].field_24
            mem[_39 + 64] = stor19[idx].field_56
            mem[_39 + 96] = stor19[idx].field_88
            mem[_39 + 128] = stor19[idx].field_136
            if stor19[idx].field_0 <= 0:
                if not address(_36):
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > -1:
                    revert with 'NH{q', 17
                mem[0] = address(_36)
                mem[32] = 0
                if balanceOf[address(_36)] > -1:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0
                emit Transfer(0, 0, address(_36));
            else:
                if sub_0185e491 and stor19[idx].field_0 / 100 % 16777216 > -1 / sub_0185e491:
                    revert with 'NH{q', 17
                if sub_0185e491 * stor19[idx].field_0 / 100 % 16777216 > -sub_9beeba1b - 1:
                    revert with 'NH{q', 17
                if block.timestamp < stor19[idx].field_24:
                    revert with 'NH{q', 17
                if block.timestamp - stor19[idx].field_0 and (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600 > -1 / block.timestamp - stor19[idx].field_0:
                    revert with 'NH{q', 17
                if not address(_36):
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > (-1 * block.timestamp * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) + (stor19[idx].field_0 * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - 1:
                    revert with 'NH{q', 17
                totalSupply = totalSupply + (block.timestamp * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[idx].field_0 * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600)
                mem[0] = address(_36)
                mem[32] = 0
                if balanceOf[address(_36)] > (-1 * block.timestamp * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) + (stor19[idx].field_24 * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(_36)] = balanceOf[address(_36)] + (block.timestamp * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[idx].field_24 * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600)
                mem[mem[64]] = (block.timestamp * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[idx].field_24 * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600)
                emit Transfer(((block.timestamp * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[idx].field_24 * (sub_0185e491 * stor19[idx].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600)), 0, address(_36));
            mem[_37 + 32] = uint32(block.timestamp)
            if idx >= 100001:
                revert with 'NH{q', 50
            stor19[idx].field_24 = uint32(block.timestamp)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d81aa0d2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == mem[_22 + 12 len 20]
        if mem[_22 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 100001:
            revert with 'NH{q', 50
        _27 = mem[64]
        mem[64] = mem[64] + 160
        mem[_27] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_27 + 32] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_27 + 64] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_27 + 96] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_27 + 128] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_136
        if stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 100001:
            revert with 'NH{q', 50
        _31 = mem[64]
        mem[64] = mem[64] + 160
        mem[_31] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_31 + 32] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_31 + 64] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_31 + 96] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_31 + 128] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_136
        if stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if sub_0185e491 and stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216 > -1 / sub_0185e491:
            revert with 'NH{q', 17
        if sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216 > -sub_9beeba1b - 1:
            revert with 'NH{q', 17
        if block.timestamp < stor19[cd[((32 * idx) + cd[4] + 36)]].field_24:
            revert with 'NH{q', 17
        if block.timestamp - stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 and (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600 > -1 / block.timestamp - stor19[cd[((32 * idx) + cd[4] + 36)]].field_0:
            revert with 'NH{q', 17
        if (block.timestamp * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > (-1 * block.timestamp * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) + (stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - 1:
            revert with 'NH{q', 17
        mem[_27 + 32] = uint32(block.timestamp)
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 100001:
            revert with 'NH{q', 50
        stor19[cd[((32 * idx) + cd[4] + 36)]].field_24 = uint32(block.timestamp)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (block.timestamp * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[cd[((32 * idx) + cd[4] + 36)]].field_24 * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600)
        continue 
    if s > 0:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -s - 1:
            revert with 'NH{q', 17
        totalSupply += s
        if balanceOf[address(msg.sender)] > -s - 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] += s
        emit Transfer(s, 0, msg.sender);
        emit Minted(msg.sender, s);
}

function stake(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_38] == mem[_38 + 12 len 20]
        if mem[_38 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x7b26b183 with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_44] == mem[_44]
        require mem[_44 + 32] == mem[_44 + 44 len 20]
        require mem[_44 + 64] == mem[_44 + 76 len 20]
        require mem[_44 + 96] == mem[_44 + 96]
        require mem[_44 + 128] == mem[_44 + 128]
        require mem[_44 + 160] == mem[_44 + 160]
        require mem[_44 + 192] == bool(mem[_44 + 192])
        _52 = mem[_44 + 224]
        require mem[_44 + 224] == mem[_44 + 224]
        if cd[((32 * idx) + arg1 + 36)] >= 100001:
            revert with 'NH{q', 50
        _53 = mem[64]
        mem[64] = mem[64] + 160
        mem[_53] = stor19[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_53 + 32] = stor19[cd[((32 * idx) + arg1 + 36)]].field_24
        mem[_53 + 64] = stor19[cd[((32 * idx) + arg1 + 36)]].field_56
        mem[_53 + 96] = stor19[cd[((32 * idx) + arg1 + 36)]].field_88
        mem[_53 + 128] = stor19[cd[((32 * idx) + arg1 + 36)]].field_136
        if not stor19[cd[((32 * idx) + arg1 + 36)]].field_0:
            _54 = mem[64]
            mem[64] = mem[64] + 160
            mem[_54] = _52 % 16777216
            mem[_54 + 32] = uint32(block.timestamp)
            if stor19[cd[((32 * idx) + arg1 + 36)]].field_56 > 0:
                mem[_54 + 64] = stor19[cd[((32 * idx) + arg1 + 36)]].field_56
                mem[_54 + 96] = 0
                if _52 / 100 and sub_902367aa > -1 / _52 / 100:
                    revert with 'NH{q', 17
                if uint32(block.timestamp) > -uint32(_52 / 100 * sub_902367aa) + test266151307():
                    revert with 'NH{q', 17
                mem[_54 + 128] = uint32(uint32(block.timestamp) + uint32(_52 / 100 * sub_902367aa))
                if cd[((32 * idx) + arg1 + 36)] >= 100001:
                    revert with 'NH{q', 50
                stor19[cd[((32 * idx) + arg1 + 36)]].field_0 = _52 % 16777216
                stor19[cd[((32 * idx) + arg1 + 36)]].field_24 = uint32(block.timestamp)
            else:
                if uint32(block.timestamp) < sub_03bb5f02:
                    revert with 'NH{q', 17
                mem[_54 + 64] = uint32(uint32(block.timestamp) - sub_03bb5f02)
                mem[_54 + 96] = 0
                if _52 / 100 and sub_902367aa > -1 / _52 / 100:
                    revert with 'NH{q', 17
                if uint32(block.timestamp) > -uint32(_52 / 100 * sub_902367aa) + test266151307():
                    revert with 'NH{q', 17
                mem[_54 + 128] = uint32(uint32(block.timestamp) + uint32(_52 / 100 * sub_902367aa))
                if cd[((32 * idx) + arg1 + 36)] >= 100001:
                    revert with 'NH{q', 50
                stor19[cd[((32 * idx) + arg1 + 36)]].field_0 = _52 % 16777216
                stor19[cd[((32 * idx) + arg1 + 36)]].field_24 = uint32(block.timestamp)
                stor19[cd[((32 * idx) + arg1 + 36)]].field_56 = uint32(uint32(block.timestamp) - sub_03bb5f02)
            stor19[cd[((32 * idx) + arg1 + 36)]].field_88 = 0
            stor19[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
            stor19[cd[((32 * idx) + arg1 + 36)]].field_136 = uint32(uint32(block.timestamp) + uint32(_52 / 100 * sub_902367aa))
            if sub_433804d3 > 65534:
                revert with 'NH{q', 17
            sub_433804d3 = uint16(sub_433804d3 + 1)
            if sub_05973b1d > -(_52 % 16777216) + test266151307():
                revert with 'NH{q', 17
            sub_05973b1d = sub_05973b1d + (_52 % 16777216) % 1099511627776
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = block.timestamp
            emit Staked(cd[((32 * idx) + arg1 + 36)], block.timestamp);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a5b65da7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_39] == mem[_39 + 12 len 20]
        if mem[_39 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 100001:
            revert with 'NH{q', 50
        _47 = mem[64]
        mem[64] = mem[64] + 160
        mem[_47] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_47 + 32] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_47 + 64] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_47 + 96] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_47 + 128] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_136
        if stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 100001:
            revert with 'NH{q', 50
        _52 = mem[64]
        mem[64] = mem[64] + 160
        mem[_52] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_52 + 32] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_52 + 64] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_52 + 96] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_52 + 128] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_136
        if stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if sub_0185e491 and stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216 > -1 / sub_0185e491:
            revert with 'NH{q', 17
        if sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216 > -sub_9beeba1b - 1:
            revert with 'NH{q', 17
        if block.timestamp < stor19[cd[((32 * idx) + cd[4] + 36)]].field_24:
            revert with 'NH{q', 17
        if block.timestamp - stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 and (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600 > -1 / block.timestamp - stor19[cd[((32 * idx) + cd[4] + 36)]].field_0:
            revert with 'NH{q', 17
        if (block.timestamp * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > (-1 * block.timestamp * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) + (stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - 1:
            revert with 'NH{q', 17
        mem[_47 + 32] = uint32(block.timestamp)
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 100001:
            revert with 'NH{q', 50
        stor19[cd[((32 * idx) + cd[4] + 36)]].field_24 = uint32(block.timestamp)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (block.timestamp * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600) - (stor19[cd[((32 * idx) + cd[4] + 36)]].field_24 * (sub_0185e491 * stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 % 16777216) + sub_9beeba1b / 24 * 3600)
        continue 
    if s <= 0:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_4c1a0012Address)
            staticcall sub_4c1a0012Address.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_94] == mem[_94 + 12 len 20]
            if mem[_94 + 12 len 20] != msg.sender:
                revert with 0, 'NOT OWNER'
            if cd[((32 * idx) + cd[4] + 36)] >= 100001:
                revert with 'NH{q', 50
            _100 = mem[64]
            mem[64] = mem[64] + 160
            mem[_100] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_100 + 32] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_24
            mem[_100 + 64] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_56
            mem[_100 + 96] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_88
            mem[_100 + 128] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_136
            if stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 > 0:
                if sub_05973b1d < stor19[cd[((32 * idx) + cd[4] + 36)]].field_0:
                    revert with 'NH{q', 17
                sub_05973b1d = sub_05973b1d - stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 % 1099511627776
                if sub_433804d3 < 1:
                    revert with 'NH{q', 17
                sub_433804d3 = uint16(sub_433804d3 - 1)
                mem[_100] = 0
                if cd[((32 * idx) + cd[4] + 36)] >= 100001:
                    revert with 'NH{q', 50
                stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                stor19[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 32] = block.timestamp
                emit 0x69f6d6e6: cd[((32 * idx) + cd[4] + 36)], block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -s - 1:
            revert with 'NH{q', 17
        totalSupply += s
        mem[0] = msg.sender
        mem[32] = 0
        if balanceOf[address(msg.sender)] > -s - 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] += s
        emit Transfer(s, 0, msg.sender);
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = s
        emit Minted(msg.sender, s);
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_4c1a0012Address)
            staticcall sub_4c1a0012Address.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_95] == mem[_95 + 12 len 20]
            if mem[_95 + 12 len 20] != msg.sender:
                revert with 0, 'NOT OWNER'
            if cd[((32 * idx) + cd[4] + 36)] >= 100001:
                revert with 'NH{q', 50
            _102 = mem[64]
            mem[64] = mem[64] + 160
            mem[_102] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_102 + 32] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_24
            mem[_102 + 64] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_56
            mem[_102 + 96] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_88
            mem[_102 + 128] = stor19[cd[((32 * idx) + cd[4] + 36)]].field_136
            if stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 > 0:
                if sub_05973b1d < stor19[cd[((32 * idx) + cd[4] + 36)]].field_0:
                    revert with 'NH{q', 17
                sub_05973b1d = sub_05973b1d - stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 % 1099511627776
                if sub_433804d3 < 1:
                    revert with 'NH{q', 17
                sub_433804d3 = uint16(sub_433804d3 - 1)
                mem[_102] = 0
                if cd[((32 * idx) + cd[4] + 36)] >= 100001:
                    revert with 'NH{q', 50
                stor19[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                stor19[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 32] = block.timestamp
                emit 0x69f6d6e6: cd[((32 * idx) + cd[4] + 36)], block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
