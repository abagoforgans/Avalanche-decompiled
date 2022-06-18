contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of uint256 stor1;
array of uint256 sub_7b9e89fe;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 sub_60c66fc8;
mapping of struct stor7;
mapping of uint256 stor8;
mapping of struct stor9;
array of struct stor10;
array of struct sub_fd55448b;
uint256 sub_74f9921d;
uint256 sub_0620eedc;
uint256 sub_072c15e0;
mapping of struct sub_6324b5c8;
mapping of struct sub_cb5da61a;
uint256 marketCap;
uint256 sub_03a9fcf9;
uint256 stor20;
uint256 paused;
address depositTokenAddress;
address stor23;
address stor24;
array of uint256 sub_c0598783;

function sub_03a9fcf9(?) payable {
    return sub_03a9fcf9
}

function sub_0620eedc(?) payable {
    return sub_0620eedc
}

function sub_072c15e0(?) payable {
    return sub_072c15e0
}

function depositTokenAddress() payable {
    return depositTokenAddress
}

function marketCap() payable {
    return marketCap
}

function paused() payable {
    return paused
}

function sub_60c66fc8(?) payable {
    require calldata.size - 4 >= 32
    return sub_60c66fc8[address(arg1)]
}

function sub_6324b5c8(?) payable {
    require calldata.size - 4 >= 32
    return sub_6324b5c8[address(arg1)].field_256
}

function sub_74f9921d(?) payable {
    return sub_74f9921d
}

function sub_7b9e89fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_7b9e89fe[arg1]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor0[arg1][address(arg2)])
}

function sub_b3378e03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fd55448b.length
    return address(sub_fd55448b[arg1].field_0)
}

function sub_ba9793de(?) payable {
    return sub_fd55448b.length
}

function sub_c0598783(?) payable {
    return sub_c0598783[0 len sub_c0598783.length]
}

function sub_cb5da61a(?) payable {
    require calldata.size - 4 >= 32
    return sub_cb5da61a[address(arg1)].field_256
}

function sub_fd55448b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fd55448b.length
    return address(sub_fd55448b[arg1].field_0)
}

function _fallback() payable {
    revert
}

function pause() payable {
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    paused = 1
}

function unpause() payable {
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    paused = 0
}

function sub_65a788d6(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    sub_03a9fcf9 = arg1
}

function setDevWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    stor5 = arg1
}

function setMarketCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    marketCap = arg1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    if stor0[arg1][address(arg2)]:
        stor0[arg1][address(arg2)] = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    if not stor0[arg1][address(arg2)]:
        stor0[arg1][address(arg2)] = 1
}

function sub_8ae5530f(?) payable {
    require calldata.size - 4 >= 64
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    if arg1 + arg2 < arg1:
        revert with 0, 'add uint256 overflow'
    if arg1 + arg2 != 100:
        revert with 0, 'cut + pool must = 100'
    stor1.length = arg1
}

function sub_f994263a(?) payable {
    require calldata.size - 4 >= 96
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    if call.data[4] + call.data[36] < call.data[4]:
        revert with 0, 'add uint256 overflow'
    if call.data[68] < 0:
        revert with 0, 'add uint256 overflow'
    if call.data[4] + call.data[36] + call.data[68] != 100:
        revert with 0, 'Cuts must add up to 100'
    sub_7b9e89fe.length = call.data[4]
    stor3 = call.data[36]
    stor4 = call.data[68]
}

function sub_9e532878(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    if arg1:
        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    while idx < arg1:
        require arg2 + idx < sub_fd55448b.length
        mem[0] = 12
        require idx < arg1
        mem[(32 * idx) + 128] = address(stor[('name', 'sub_fd55448b', 12) + arg2 + idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * arg1) + 224 len floor32(arg1)] = mem[128 len floor32(arg1)]
    return Array(len=arg1, data=mem[128 len floor32(arg1)], mem[(32 * arg1) + floor32(arg1) + 224 len (32 * arg1) - floor32(arg1)]), 
           arg2 + arg1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_60c66fc8[address(msg.sender)] <= 0:
        revert with 0, 'No prizes to claim'
    if arg1 > sub_60c66fc8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7743616e7420636c61696d206d6f7265207468616e20796f7572207072697a6520616d6f756e,
                    mem[202 len 26]
    sub_60c66fc8[address(msg.sender)] = 0
    emit 0xba90eb68: arg1, msg.sender
    require ext_code.size(stor23)
    call stor23.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_02e696bb(?) payable {
    if not sub_fd55448b.length:
        mem[(32 * sub_fd55448b.length) + 128] = 32
        mem[(32 * sub_fd55448b.length) + 160] = sub_fd55448b.length
        mem[(32 * sub_fd55448b.length) + 192 len floor32(sub_fd55448b.length)] = mem[128 len floor32(sub_fd55448b.length)]
        return memory
          from (32 * sub_fd55448b.length) + 128
           len (96 * sub_fd55448b.length) + 64
    mem[128] = address(sub_fd55448b.field_0)
    idx = 128
    s = 0
    while (32 * sub_fd55448b.length) + 96 > idx:
        mem[idx + 32] = address(sub_fd55448b[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_fd55448b.length) + 192 len floor32(sub_fd55448b.length)] = mem[128 len floor32(sub_fd55448b.length)]
    return Array(len=sub_fd55448b.length, data=mem[128 len floor32(sub_fd55448b.length)], mem[(32 * sub_fd55448b.length) + floor32(sub_fd55448b.length) + 192 len (32 * sub_fd55448b.length) - floor32(sub_fd55448b.length)]), 
}

function sub_0fec90a1(?) payable {
    if sub_cb5da61a[address(msg.sender)].field_256 <= 0:
        revert with 0, 'No Warmup Balance'
    if sub_0620eedc - sub_cb5da61a[address(msg.sender)].field_256 > sub_0620eedc:
        revert with 0, 'sub uint256 overflow'
    sub_0620eedc -= sub_cb5da61a[address(msg.sender)].field_256
    sub_cb5da61a[address(msg.sender)].field_256 = 0
    sub_cb5da61a[address(msg.sender)].field_0 = 0
    address(sub_cb5da61a[address(msg.sender)].field_512) = 0
    emit 0xa83ca9d5: sub_cb5da61a[address(msg.sender)].field_256, msg.sender
    require ext_code.size(stor24)
    call stor24.0x2e1a7d4d with:
         gas gas_remaining wei
        args sub_cb5da61a[address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor23)
    call stor23.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, sub_cb5da61a[address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_659ab2e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = sub_6324b5c8[mem[(32 * idx) + 140 len 20]].field_256
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function sub_1a8db9d8(?) payable {
    require calldata.size - 4 >= 32
    if not stor10[address(arg1)].field_0:
        mem[(32 * stor10[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor10[address(arg1)].field_0) + 160] = stor10[address(arg1)].field_0
        mem[(32 * stor10[address(arg1)].field_0) + 192 len floor32(stor10[address(arg1)].field_0)] = mem[128 len floor32(stor10[address(arg1)].field_0)]
        return memory
          from (32 * stor10[address(arg1)].field_0) + 128
           len (96 * stor10[address(arg1)].field_0) + 64
    mem[128] = stor10[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor10[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor10[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10[address(arg1)].field_0) + 192 len floor32(stor10[address(arg1)].field_0)] = mem[128 len floor32(stor10[address(arg1)].field_0)]
    return Array(len=stor10[address(arg1)].field_0, data=mem[128 len floor32(stor10[address(arg1)].field_0)], mem[(32 * stor10[address(arg1)].field_0) + floor32(stor10[address(arg1)].field_0) + 192 len (32 * stor10[address(arg1)].field_0) - floor32(stor10[address(arg1)].field_0)]), 
}

function sub_19fd76a8(?) payable {
    require calldata.size - 4 >= 64
    if not stor8[address(arg1)][arg2]:
        return 0
    if not stor7[arg2].field_256:
        return 0
    if not stor8[address(arg1)][arg2]:
        if stor7[arg2].field_256 <= 0:
            revert with 0, 'division by 0'
        require stor7[arg2].field_256
        if not stor7[arg2].field_0 / 10000:
            return 0
        require stor7[arg2].field_0 / 10000
        if stor7[arg2].field_0 / 10000 * 0 / stor7[arg2].field_256 / stor7[arg2].field_0 / 10000 != 0 / stor7[arg2].field_256:
            revert with 0, 'mul uint256 overflow'
        return (stor7[arg2].field_0 / 10000 * 0 / stor7[arg2].field_256)
    require stor8[address(arg1)][arg2]
    if 10000 * stor8[address(arg1)][arg2] / stor8[address(arg1)][arg2] != 10000:
        revert with 0, 'mul uint256 overflow'
    if stor7[arg2].field_256 <= 0:
        revert with 0, 'division by 0'
    require stor7[arg2].field_256
    if not stor7[arg2].field_0 / 10000:
        return 0
    require stor7[arg2].field_0 / 10000
    if stor7[arg2].field_0 / 10000 * 10000 * stor8[address(arg1)][arg2] / stor7[arg2].field_256 / stor7[arg2].field_0 / 10000 != 10000 * stor8[address(arg1)][arg2] / stor7[arg2].field_256:
        revert with 0, 'mul uint256 overflow'
    return (stor7[arg2].field_0 / 10000 * 10000 * stor8[address(arg1)][arg2] / stor7[arg2].field_256)
}

function deposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if paused == 1:
        revert with 0, 'Deposits Paused'
    if sub_0620eedc + arg1 < sub_0620eedc:
        revert with 0, 'add uint256 overflow'
    if sub_0620eedc + arg1 > marketCap:
        revert with 0, 'Draw Cap Reached'
    if sub_cb5da61a[address(msg.sender)].field_256 + arg1 < sub_cb5da61a[address(msg.sender)].field_256:
        revert with 0, 'add uint256 overflow'
    sub_cb5da61a[address(msg.sender)].field_256 += arg1
    sub_cb5da61a[address(msg.sender)].field_0 = sub_74f9921d + 1
    if not address(sub_cb5da61a[address(msg.sender)].field_512):
        address(sub_cb5da61a[address(msg.sender)].field_512) = arg2
    if sub_6324b5c8[address(msg.sender)].field_256 + sub_cb5da61a[address(msg.sender)].field_256 > sub_03a9fcf9:
        revert with 0, 'Wallet Cap Reached'
    if sub_0620eedc + arg1 < sub_0620eedc:
        revert with 0, 'add uint256 overflow'
    sub_0620eedc += arg1
    emit Deposit(arg1, msg.sender);
    require ext_code.size(stor23)
    call stor23.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor24)
    call stor24.stake(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_490182ee(?) payable {
    require calldata.size - 4 >= 32
    if not stor8[address(msg.sender)][arg1]:
        return 0, stor8[address(msg.sender)][arg1], stor7[stor13].field_256
    if not stor7[arg1].field_256:
        return 0, stor8[address(msg.sender)][arg1], stor7[stor13].field_256
    if not stor8[address(msg.sender)][arg1]:
        if stor7[arg1].field_256 <= 0:
            revert with 0, 'division by 0'
        require stor7[arg1].field_256
        if stor7[arg1].field_0 / 10000:
            require stor7[arg1].field_0 / 10000
            if stor7[arg1].field_0 / 10000 * 0 / stor7[arg1].field_256 / stor7[arg1].field_0 / 10000 != 0 / stor7[arg1].field_256:
                revert with 0, 'mul uint256 overflow'
        return 0 / stor7[arg1].field_256, stor8[address(msg.sender)][arg1], stor7[stor13].field_256
    require stor8[address(msg.sender)][arg1]
    if 10000 * stor8[address(msg.sender)][arg1] / stor8[address(msg.sender)][arg1] != 10000:
        revert with 0, 'mul uint256 overflow'
    if stor7[arg1].field_256 <= 0:
        revert with 0, 'division by 0'
    require stor7[arg1].field_256
    if stor7[arg1].field_0 / 10000:
        require stor7[arg1].field_0 / 10000
        if stor7[arg1].field_0 / 10000 * 10000 * stor8[address(msg.sender)][arg1] / stor7[arg1].field_256 / stor7[arg1].field_0 / 10000 != 10000 * stor8[address(msg.sender)][arg1] / stor7[arg1].field_256:
            revert with 0, 'mul uint256 overflow'
    return 10000 * stor8[address(msg.sender)][arg1] / stor7[arg1].field_256, 
           stor8[address(msg.sender)][arg1],
           stor7[stor13].field_256
}

function sub_bfe43fb7(?) payable {
    require calldata.size - 4 >= 192
    if stor20 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor20 = 2
    if paused == 1:
        revert with 0, 'Deposits Paused'
    require ext_code.size(stor23)
    call stor23.permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_0620eedc + arg1 < sub_0620eedc:
        revert with 0, 'add uint256 overflow'
    if sub_0620eedc + arg1 > marketCap:
        revert with 0, 'Draw Cap Reached'
    if sub_cb5da61a[address(msg.sender)].field_256 + arg1 < sub_cb5da61a[address(msg.sender)].field_256:
        revert with 0, 'add uint256 overflow'
    sub_cb5da61a[address(msg.sender)].field_256 += arg1
    sub_cb5da61a[address(msg.sender)].field_0 = sub_74f9921d + 1
    if not address(sub_cb5da61a[address(msg.sender)].field_512):
        address(sub_cb5da61a[address(msg.sender)].field_512) = arg6
    if sub_6324b5c8[address(msg.sender)].field_256 + sub_cb5da61a[address(msg.sender)].field_256 > sub_03a9fcf9:
        revert with 0, 'Wallet Cap Reached'
    if sub_0620eedc + arg1 < sub_0620eedc:
        revert with 0, 'add uint256 overflow'
    sub_0620eedc += arg1
    emit Deposit(arg1, msg.sender);
    require ext_code.size(stor23)
    call stor23.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor24)
    call stor24.stake(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor20 = 1
}

function qualify() payable {
    if sub_cb5da61a[address(msg.sender)].field_256 <= 0:
        revert with 0, 'No Warmup Balance'
    if sub_cb5da61a[address(msg.sender)].field_0 > sub_74f9921d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe5761726d75702042616c616e6365206e6f742076616c696420666f72207468697320647261,
                    mem[202 len 26]
    if not sub_6324b5c8[address(msg.sender)].field_256:
        sub_fd55448b.length++
        address(sub_fd55448b[sub_fd55448b.length].field_0) = msg.sender
        sub_6324b5c8[address(msg.sender)].field_0 = sub_fd55448b.length - 1
    if address(sub_cb5da61a[address(msg.sender)].field_512):
        if stor7[stor13].field_256 + sub_cb5da61a[address(msg.sender)].field_256 < stor7[stor13].field_256:
            revert with 0, 'add uint256 overflow'
        stor7[stor13].field_256 += sub_cb5da61a[address(msg.sender)].field_256
        if stor8[address(stor17[address(msg.sender)].field_512)][stor13] + sub_cb5da61a[address(msg.sender)].field_256 < stor8[address(stor17[address(msg.sender)].field_512)][stor13]:
            revert with 0, 'add uint256 overflow'
        stor8[address(stor17[address(msg.sender)].field_512)][stor13] += sub_cb5da61a[address(msg.sender)].field_256
        address(stor9[address(msg.sender)][stor13].field_0) = address(sub_cb5da61a[address(msg.sender)].field_512)
        if stor9[address(msg.sender)][stor13].field_256 + sub_cb5da61a[address(msg.sender)].field_256 < stor9[address(msg.sender)][stor13].field_256:
            revert with 0, 'add uint256 overflow'
        stor9[address(msg.sender)][stor13].field_256 += sub_cb5da61a[address(msg.sender)].field_256
        if stor10[address(stor17[address(msg.sender)].field_512)].field_0 <= 0:
            stor10[address(stor17[address(msg.sender)].field_512)].field_0++
            stor10[address(stor17[address(msg.sender)].field_512)][stor10[address(stor17[address(msg.sender)].field_512)].field_0].field_0 = sub_74f9921d
        else:
            require stor10[address(stor17[address(msg.sender)].field_512)].field_0 - 1 < stor10[address(stor17[address(msg.sender)].field_512)].field_0
            if stor10[address(stor17[address(msg.sender)].field_512)][stor10[address(stor17[address(msg.sender)].field_512)].field_0].field_0 != sub_74f9921d:
                stor10[address(stor17[address(msg.sender)].field_512)].field_0++
                stor10[address(stor17[address(msg.sender)].field_512)][stor10[address(stor17[address(msg.sender)].field_512)].field_0].field_0 = sub_74f9921d
    address(sub_cb5da61a[address(msg.sender)].field_512) = 0
    if sub_072c15e0 + sub_cb5da61a[address(msg.sender)].field_256 < sub_072c15e0:
        revert with 0, 'add uint256 overflow'
    sub_072c15e0 += sub_cb5da61a[address(msg.sender)].field_256
    if sub_6324b5c8[address(msg.sender)].field_256 + sub_cb5da61a[address(msg.sender)].field_256 < sub_6324b5c8[address(msg.sender)].field_256:
        revert with 0, 'add uint256 overflow'
    sub_6324b5c8[address(msg.sender)].field_256 += sub_cb5da61a[address(msg.sender)].field_256
    sub_cb5da61a[address(msg.sender)].field_256 = 0
    sub_cb5da61a[address(msg.sender)].field_0 = 0
    emit 0xc87e1c5e: sub_cb5da61a[address(msg.sender)].field_256, msg.sender
}

function sub_593a3739(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor10[address(arg1)].field_0:
        require idx < stor10[address(arg1)].field_0
        if stor10[address(arg1)][idx].field_0 >= sub_74f9921d:
            return 0
        require idx < stor10[address(arg1)].field_0
        mem[0] = stor10[address(arg1)][idx].field_0
        mem[32] = sha3(address(arg1), 8)
        if stor8[address(arg1)][stor10[address(arg1)][idx].field_0]:
            _44 = mem[64]
            mem[64] = mem[64] + 64
            mem[_44] = 0
            mem[_44 + 32] = 0
            mem[0] = stor10[address(arg1)][idx].field_0
            mem[32] = 7
            _46 = mem[64]
            mem[64] = mem[64] + 64
            mem[_46] = stor7[stor10[address(arg1)][idx].field_0].field_0
            mem[_46 + 32] = stor7[stor10[address(arg1)][idx].field_0].field_256
            if stor7[stor10[address(arg1)][idx].field_0].field_256:
                if not stor8[address(arg1)][stor10[address(arg1)][idx].field_0]:
                    if stor7[stor10[address(arg1)][idx].field_0].field_256 <= 0:
                        revert with 0, 'division by 0'
                    require stor7[stor10[address(arg1)][idx].field_0].field_256
                    if stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000:
                        require stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000
                        if stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000 * 0 / stor7[stor10[address(arg1)][idx].field_0].field_256 / stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000 != 0 / stor7[stor10[address(arg1)][idx].field_0].field_256:
                            revert with 0, 'mul uint256 overflow'
                        if stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000 * 0 / stor7[stor10[address(arg1)][idx].field_0].field_256 < 0:
                            revert with 0, 'add uint256 overflow'
                else:
                    require stor8[address(arg1)][stor10[address(arg1)][idx].field_0]
                    if 10000 * stor8[address(arg1)][stor10[address(arg1)][idx].field_0] / stor8[address(arg1)][stor10[address(arg1)][idx].field_0] != 10000:
                        revert with 0, 'mul uint256 overflow'
                    if stor7[stor10[address(arg1)][idx].field_0].field_256 <= 0:
                        revert with 0, 'division by 0'
                    require stor7[stor10[address(arg1)][idx].field_0].field_256
                    if stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000:
                        require stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000
                        if stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000 * 10000 * stor8[address(arg1)][stor10[address(arg1)][idx].field_0] / stor7[stor10[address(arg1)][idx].field_0].field_256 / stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000 != 10000 * stor8[address(arg1)][stor10[address(arg1)][idx].field_0] / stor7[stor10[address(arg1)][idx].field_0].field_256:
                            revert with 0, 'mul uint256 overflow'
                        if stor7[stor10[address(arg1)][idx].field_0].field_0 / 10000 * 10000 * stor8[address(arg1)][stor10[address(arg1)][idx].field_0] / stor7[stor10[address(arg1)][idx].field_0].field_256 < 0:
                            revert with 0, 'add uint256 overflow'
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        continue 
    return 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_6324b5c8[address(msg.sender)].field_256 < arg1:
        revert with 0, 'Invalid withdraw amount'
    if sub_6324b5c8[address(msg.sender)].field_256 - arg1 > sub_6324b5c8[address(msg.sender)].field_256:
        revert with 0, 'sub uint256 overflow'
    if not sub_6324b5c8[address(msg.sender)].field_256 - arg1:
        require sub_fd55448b.length - 1 < sub_fd55448b.length
        require sub_6324b5c8[address(msg.sender)].field_0 < sub_fd55448b.length
        address(sub_fd55448b[stor16[address(msg.sender)].field_0].field_0) = address(sub_fd55448b[sub_fd55448b.length].field_0)
        require sub_fd55448b.length
        address(sub_fd55448b[sub_fd55448b.length].field_0) = 0
        sub_fd55448b.length--
    if address(stor9[address(msg.sender)][stor13].field_0):
        if arg1 == stor9[address(msg.sender)][stor13].field_256:
            address(stor9[address(msg.sender)][stor13].field_0) = 0
            if stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13] - arg1 > stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13]:
                revert with 0, 'sub uint256 overflow'
            stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13] -= arg1
            if stor7[stor13].field_256 - arg1 > stor7[stor13].field_256:
                revert with 0, 'sub uint256 overflow'
            stor7[stor13].field_256 -= arg1
        else:
            if arg1 <= stor9[address(msg.sender)][stor13].field_256:
                if arg1 < stor9[address(msg.sender)][stor13].field_256:
                    if stor9[address(msg.sender)][stor13].field_256 - arg1 > stor9[address(msg.sender)][stor13].field_256:
                        revert with 0, 'sub uint256 overflow'
                    stor9[address(msg.sender)][stor13].field_256 -= arg1
                    if stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13] - arg1 > stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13]:
                        revert with 0, 'sub uint256 overflow'
                    stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13] -= arg1
                    if stor7[stor13].field_256 - arg1 > stor7[stor13].field_256:
                        revert with 0, 'sub uint256 overflow'
                    stor7[stor13].field_256 -= arg1
            else:
                address(stor9[address(msg.sender)][stor13].field_0) = 0
                if 0 > stor9[address(msg.sender)][stor13].field_256:
                    revert with 0, 'sub uint256 overflow'
                stor9[address(msg.sender)][stor13].field_256 = 0
                if stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13] - stor9[address(msg.sender)][stor13].field_256 > stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13]:
                    revert with 0, 'sub uint256 overflow'
                stor8[address(stor9[address(msg.sender)][stor13].field_0)][stor13] -= stor9[address(msg.sender)][stor13].field_256
                if stor7[stor13].field_256 - stor9[address(msg.sender)][stor13].field_256 > stor7[stor13].field_256:
                    revert with 0, 'sub uint256 overflow'
                stor7[stor13].field_256 -= stor9[address(msg.sender)][stor13].field_256
                if arg1 - stor9[address(msg.sender)][stor13].field_256 > arg1:
                    revert with 0, 'sub uint256 overflow'
    if sub_072c15e0 - arg1 > sub_072c15e0:
        revert with 0, 'sub uint256 overflow'
    sub_072c15e0 -= arg1
    sub_6324b5c8[address(msg.sender)].field_256 -= arg1
    if sub_0620eedc - arg1 > sub_0620eedc:
        revert with 0, 'sub uint256 overflow'
    sub_0620eedc -= arg1
    emit Withdraw(arg1, msg.sender);
    require ext_code.size(stor24)
    call stor24.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor23)
    call stor23.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimReferralReward() payable {
    mem[64] = 96
    mem[0] = msg.sender
    idx = 0
    while idx < stor10[address(msg.sender)].field_0:
        require idx < stor10[address(msg.sender)].field_0
        if stor10[address(msg.sender)][idx].field_0 >= sub_74f9921d:
            mem[32] = 10
            _63 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = stor10[address(msg.sender)].field_0
            if not stor10[address(msg.sender)].field_0:
                emit 0xb97cd304: 0, 64, stor10[address(msg.sender)].field_0, msg.sender
                stor10[address(msg.sender)].field_0 = 0
                mem[0] = sha3(address(msg.sender), 10)
                s = sha3(mem[0])
                while sha3(sha3(address(msg.sender), 10)) + stor10[address(msg.sender)].field_0 > s:
                    stor[s] = 0
                    mem[0] = msg.sender
                    mem[32] = 10
                    s = s + 1
                    continue 
            else:
                mem[0] = sha3(address(msg.sender), 10)
                mem[mem[64] + 96] = stor10[address(msg.sender)].field_0
                idx = mem[64] + 96
                s = sha3(mem[0])
                while mem[64] + (32 * stor10[address(msg.sender)].field_0) + 96 > idx + 32:
                    mem[0] = msg.sender
                    mem[32] = 10
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xb97cd304: mem[mem[64] len _63 + (32 * stor10[address(msg.sender)].field_0) + -mem[64] + 96], msg.sender
                stor10[address(msg.sender)].field_0 = 0
                mem[0] = sha3(address(msg.sender), 10)
                idx = sha3(mem[0])
                while sha3(sha3(address(msg.sender), 10)) + stor10[address(msg.sender)].field_0 > idx:
                    stor[idx] = 0
                    mem[0] = msg.sender
                    mem[32] = 10
                    idx = idx + 1
                    continue 
            require ext_code.size(stor23)
            call stor23.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require idx < stor10[address(msg.sender)].field_0
        mem[0] = stor10[address(msg.sender)][idx].field_0
        mem[32] = sha3(address(msg.sender), 8)
        if stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0]:
            _67 = mem[64]
            mem[64] = mem[64] + 64
            mem[_67] = 0
            mem[_67 + 32] = 0
            mem[0] = stor10[address(msg.sender)][idx].field_0
            mem[32] = 7
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = stor7[stor10[address(msg.sender)][idx].field_0].field_0
            mem[_70 + 32] = stor7[stor10[address(msg.sender)][idx].field_0].field_256
            if stor7[stor10[address(msg.sender)][idx].field_0].field_256:
                if not stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0]:
                    if stor7[stor10[address(msg.sender)][idx].field_0].field_256 <= 0:
                        revert with 0, 'division by 0'
                    require stor7[stor10[address(msg.sender)][idx].field_0].field_256
                    if stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000:
                        require stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000
                        if stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000 * 0 / stor7[stor10[address(msg.sender)][idx].field_0].field_256 / stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000 != 0 / stor7[stor10[address(msg.sender)][idx].field_0].field_256:
                            revert with 0, 'mul uint256 overflow'
                        if stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000 * 0 / stor7[stor10[address(msg.sender)][idx].field_0].field_256 < 0:
                            revert with 0, 'add uint256 overflow'
                else:
                    require stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0]
                    if 10000 * stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0] / stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0] != 10000:
                        revert with 0, 'mul uint256 overflow'
                    if stor7[stor10[address(msg.sender)][idx].field_0].field_256 <= 0:
                        revert with 0, 'division by 0'
                    require stor7[stor10[address(msg.sender)][idx].field_0].field_256
                    if stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000:
                        require stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000
                        if stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000 * 10000 * stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0] / stor7[stor10[address(msg.sender)][idx].field_0].field_256 / stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000 != 10000 * stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0] / stor7[stor10[address(msg.sender)][idx].field_0].field_256:
                            revert with 0, 'mul uint256 overflow'
                        if stor7[stor10[address(msg.sender)][idx].field_0].field_0 / 10000 * 10000 * stor8[address(msg.sender)][stor10[address(msg.sender)][idx].field_0] / stor7[stor10[address(msg.sender)][idx].field_0].field_256 < 0:
                            revert with 0, 'add uint256 overflow'
        mem[0] = msg.sender
        mem[32] = 10
        idx = idx + 1
        continue 
    mem[32] = 10
    _52 = mem[64]
    mem[mem[64]] = 0
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = stor10[address(msg.sender)].field_0
    if not stor10[address(msg.sender)].field_0:
        emit 0xb97cd304: 0, 64, stor10[address(msg.sender)].field_0, msg.sender
    else:
        mem[mem[64] + 96] = stor10[address(msg.sender)].field_0
        idx = mem[64] + 96
        s = 0
        while mem[64] + (32 * stor10[address(msg.sender)].field_0) + 96 > idx + 32:
            mem[idx + 32] = stor10[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xb97cd304: mem[mem[64] len _52 + (32 * stor10[address(msg.sender)].field_0) + -mem[64] + 96], msg.sender
    stor10[address(msg.sender)].field_0 = 0
    idx = 0
    while stor10[address(msg.sender)].field_0 > idx:
        stor10[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(stor23)
    call stor23.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7b492413(?) payable {
    require ext_code.size(stor24)
    staticcall stor24.earned(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0] / 100:
        if not ext_call.return_data[0] / 100:
            return 0
        require ext_call.return_data[0] / 100
        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / ext_call.return_data[0] / 100 != -stor1.length + 100:
            revert with 0, 'mul uint256 overflow'
        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
            if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                    return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 0, 0, 0, 0
                require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                    revert with 0, 'mul uint256 overflow'
                return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                       0,
                       0,
                       (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
                       0
            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
                revert with 0, 'mul uint256 overflow'
            if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                       0,
                       (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
                       0,
                       0
            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                revert with 0, 'mul uint256 overflow'
            return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                   0,
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
                   0
        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != sub_7b9e89fe.length:
            revert with 0, 'mul uint256 overflow'
        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
            if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                       (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
                       0,
                       0,
                       0
            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                revert with 0, 'mul uint256 overflow'
            return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
                   0,
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
                   0
        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
            revert with 0, 'mul uint256 overflow'
        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
            return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
                   0,
                   0
        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
            revert with 0, 'mul uint256 overflow'
        return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
               0
    require ext_call.return_data[0] / 100
    if ext_call.return_data[0] / 100 * stor1.length / ext_call.return_data[0] / 100 != stor1.length:
        revert with 0, 'mul uint256 overflow'
    if not ext_call.return_data[0] / 100:
        return 0, 0, 0, 0, ext_call.return_data[0] / 100 * stor1.length
    require ext_call.return_data[0] / 100
    if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / ext_call.return_data[0] / 100 != -stor1.length + 100:
        revert with 0, 'mul uint256 overflow'
    if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
            if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                       0,
                       0,
                       0,
                       ext_call.return_data[0] / 100 * stor1.length
            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                revert with 0, 'mul uint256 overflow'
            return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                   0,
                   0,
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
                   ext_call.return_data[0] / 100 * stor1.length
        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
            revert with 0, 'mul uint256 overflow'
        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
            return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                   0,
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
                   0,
                   ext_call.return_data[0] / 100 * stor1.length
        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
            revert with 0, 'mul uint256 overflow'
        return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
               0,
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
               ext_call.return_data[0] / 100 * stor1.length
    require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
    if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != sub_7b9e89fe.length:
        revert with 0, 'mul uint256 overflow'
    if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
            return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
                   (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
                   0,
                   0,
                   ext_call.return_data[0] / 100 * stor1.length
        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
            revert with 0, 'mul uint256 overflow'
        return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
               0,
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
               ext_call.return_data[0] / 100 * stor1.length
    require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
    if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
        revert with 0, 'mul uint256 overflow'
    if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
        return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
               (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
               0,
               ext_call.return_data[0] / 100 * stor1.length
    require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
    if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
        revert with 0, 'mul uint256 overflow'
    return (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100), 
           (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length,
           (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5,
           (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4,
           ext_call.return_data[0] / 100 * stor1.length
}

function sub_e297184a(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor20 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor20 = 2
    require ext_code.size(stor24)
    staticcall stor24.earned(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor24)
    call stor24.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor0[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)]:
        revert with 0, 'access denied'
    if arg2.length != 6:
        revert with 0, 'Must select 6 winners'
    if arg1 != sub_74f9921d:
        revert with 0, 'Only one call per draw'
    if not ext_call.return_data[0]:
        sub_74f9921d++
    else:
        mem[(32 * arg2.length) + 128 len 160] = call.data[calldata.size len 160]
        mem[(32 * arg2.length) + 288 len 160] = call.data[calldata.size len 160]
        if not ext_call.return_data[0] / 100:
            if not ext_call.return_data[0] / 100:
                require 0 < arg2.length
                if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 0 < arg2.length
                require 1 < arg2.length
                if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 1 < arg2.length
                require 2 < arg2.length
                if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 2 < arg2.length
                require 3 < arg2.length
                if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 3 < arg2.length
                require 4 < arg2.length
                if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 4 < arg2.length
                require 5 < arg2.length
                if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 5 < arg2.length
                stor7[stor13].field_0 = 0
            else:
                require ext_call.return_data[0] / 100
                if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / ext_call.return_data[0] / 100 != -stor1.length + 100:
                    revert with 0, 'mul uint256 overflow'
                if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                    if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
                    else:
                        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
                            revert with 0, 'mul uint256 overflow'
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
                else:
                    require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                    if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != sub_7b9e89fe.length:
                        revert with 0, 'mul uint256 overflow'
                    if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
                    else:
                        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
                            revert with 0, 'mul uint256 overflow'
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
            if sub_60c66fc8[stor5] < sub_60c66fc8[stor5]:
                revert with 0, 'add uint256 overflow'
        else:
            require ext_call.return_data[0] / 100
            if ext_call.return_data[0] / 100 * stor1.length / ext_call.return_data[0] / 100 != stor1.length:
                revert with 0, 'mul uint256 overflow'
            if not ext_call.return_data[0] / 100:
                require 0 < arg2.length
                if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 0 < arg2.length
                require 1 < arg2.length
                if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 1 < arg2.length
                require 2 < arg2.length
                if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 2 < arg2.length
                require 3 < arg2.length
                if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 3 < arg2.length
                require 4 < arg2.length
                if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 4 < arg2.length
                require 5 < arg2.length
                if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                    revert with 0, 'add uint256 overflow'
                require 5 < arg2.length
                stor7[stor13].field_0 = 0
            else:
                require ext_call.return_data[0] / 100
                if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / ext_call.return_data[0] / 100 != -stor1.length + 100:
                    revert with 0, 'mul uint256 overflow'
                if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                    if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
                    else:
                        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
                            revert with 0, 'mul uint256 overflow'
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
                else:
                    require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                    if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != sub_7b9e89fe.length:
                        revert with 0, 'mul uint256 overflow'
                    if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
                    else:
                        require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                        if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor3:
                            revert with 0, 'mul uint256 overflow'
                        if not (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100:
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = 0
                        else:
                            require (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100
                            if (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4 / (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 != stor4:
                                revert with 0, 'mul uint256 overflow'
                            require 0 < arg2.length
                            if sub_60c66fc8[mem[140 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length) < sub_60c66fc8[mem[140 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 0 < arg2.length
                            sub_60c66fc8[mem[140 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * sub_7b9e89fe.length
                            require 1 < arg2.length
                            if sub_60c66fc8[mem[172 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[172 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 1 < arg2.length
                            sub_60c66fc8[mem[172 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 2 < arg2.length
                            if sub_60c66fc8[mem[204 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[204 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 2 < arg2.length
                            sub_60c66fc8[mem[204 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 3 < arg2.length
                            if sub_60c66fc8[mem[236 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[236 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 3 < arg2.length
                            sub_60c66fc8[mem[236 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 4 < arg2.length
                            if sub_60c66fc8[mem[268 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[268 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 4 < arg2.length
                            sub_60c66fc8[mem[268 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            require 5 < arg2.length
                            if sub_60c66fc8[mem[300 len 20]] + ((100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5) < sub_60c66fc8[mem[300 len 20]]:
                                revert with 0, 'add uint256 overflow'
                            require 5 < arg2.length
                            sub_60c66fc8[mem[300 len 20]] += (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor3 / 5
                            stor7[stor13].field_0 = (100 * ext_call.return_data[0] / 100) - (stor1.length * ext_call.return_data[0] / 100) / 100 * stor4
            if sub_60c66fc8[stor5] + (ext_call.return_data[0] / 100 * stor1.length) < sub_60c66fc8[stor5]:
                revert with 0, 'add uint256 overflow'
            sub_60c66fc8[stor5] += ext_call.return_data[0] / 100 * stor1.length
        sub_74f9921d++
        emit Draw(ext_call.return_data[0], arg1);
    stor20 = 1
    return ext_call.return_data[0]
}



}
