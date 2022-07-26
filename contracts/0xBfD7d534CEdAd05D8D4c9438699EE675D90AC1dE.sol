contract main {




// =====================  Runtime code  =====================


#
#  - collect()
#
const sub_17fca500(?) = (17472 * 24 * 3600)

const sub_9e228a91(?) = 8

const sub_cd5bdc88(?) = (2184 * 24 * 3600)

const sub_e89019a3(?) = (4368 * 24 * 3600)


address stor0;
address stor1;
uint256 startedAt;
uint256 endsAt;
uint256 vestingCliff;
mapping of uint8 stor5;
mapping of uint256 shares;
mapping of uint256 sub_f17e27f2;
mapping of uint256 sub_477395e1;
array of address stor9;

function endsAt() payable {
    return endsAt
}

function sub_477395e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_477395e1[arg1]
}

function registered(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function shares(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1]
}

function sub_f17e27f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f17e27f2[arg1]
}

function startedAt() payable {
    return startedAt
}

function vestingCliff() payable {
    return vestingCliff
}

function _fallback() payable {
    revert
}

function sub_47a023bf(?) payable {
    require calldata.size - 4 >= 128
    if arg2 <= arg1:
        return 0
    if arg2 < arg1:
        revert with 0, 17
    if 1 > !(arg2 - arg1):
        revert with 0, 17
    if arg2 + -arg1 + 1 / 2184 * 24 * 3600 < 8:
        if arg2 + -arg1 + 1 / 2184 * 24 * 3600 and arg3 > -1 / arg2 + -arg1 + 1 / 2184 * 24 * 3600:
            revert with 0, 17
        if arg2 + -arg1 + 1 / 2184 * 24 * 3600 * arg3 / 8 <= arg3:
            if arg2 + -arg1 + 1 / 2184 * 24 * 3600 * arg3 / 8 < arg4:
                revert with 0, 17
            return ((arg2 + -arg1 + 1 / 2184 * 24 * 3600 * arg3 / 8) - arg4)
    if arg3 < arg4:
        revert with 0, 17
    return (arg3 - arg4)
}

function addUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '403'
    if startedAt:
        revert with 0, '400'
    if not stor5[address(arg1)]:
        stor5[address(arg1)] = 1
        stor9.length++
        stor9[stor9.length] = arg1
    shares[address(arg1)] = arg2
}

function startVesting() payable {
    require ext_code.size(stor0)
    staticcall stor0.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '403'
    if startedAt:
        revert with 0, '400'
    startedAt = block.timestamp
    if block.timestamp > -62899201:
        revert with 0, 17
    endsAt = block.timestamp + (17472 * 24 * 3600)
    if block.timestamp > -15724801:
        revert with 0, 17
    vestingCliff = block.timestamp + (4368 * 24 * 3600)
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(stor0)
    staticcall stor0.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '403'
    if stor1 == arg1:
        revert with 0, '400'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdrawal(msg.sender, address(arg1), ext_call.return_data[0], block.timestamp);
}



}
