contract main {




// =====================  Runtime code  =====================


address _owner;
address sub_acfe3988Address;
mapping of struct bets;
mapping of struct stats;
mapping of struct sub_de22c8d4;
uint256 index;
uint256 sub_41e3ac7e;

function bets(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = bets[arg1][11].field_0
    idx = 128
    s = 0
    while bets[arg1][11].length + 96 > idx:
        mem[idx + 32] = bets[arg1][s + 11].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_1024,
           bets[arg1].field_1280,
           bets[arg1].field_1536,
           bets[arg1].field_1792,
           bets[arg1].field_2048,
           bets[arg1].field_2304,
           bets[arg1].field_2560,
           Array(len=bets[arg1][11].length, data=mem[128 len bets[arg1][11].length]),
           bets[arg1].field_3072,
           bets[arg1].field_3328,
           bool(bets[arg1].field_3584),
           bets[arg1].field_3584
}

function index() {
    return index
}

function sub_41e3ac7e(?) {
    return sub_41e3ac7e
}

function sub_acfe3988(?) {
    return sub_acfe3988Address
}

function stats(uint256 arg1) {
    require calldata.size - 4 >= 32
    return stats[arg1].field_0, stats[arg1].field_256, stats[arg1].field_512, stats[arg1].field_768
}

function _owner() {
    return _owner
}

function sub_de22c8d4(?) {
    require calldata.size - 4 >= 32
    return sub_de22c8d4[arg1].field_0, 
           sub_de22c8d4[arg1].field_256,
           sub_de22c8d4[arg1].field_512,
           sub_de22c8d4[arg1].field_768,
           sub_de22c8d4[arg1].field_1024,
           sub_de22c8d4[arg1].field_1280,
           sub_de22c8d4[arg1].field_1536,
           sub_de22c8d4[arg1].field_1792,
           sub_de22c8d4[arg1].field_2048,
           sub_de22c8d4[arg1].field_2304,
           bool(sub_de22c8d4[arg1].field_2560),
           bool(sub_de22c8d4[arg1].field_2568)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == _owner)
}

function sub_658ffb4f(?) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 != 1:
            if arg2 != 2:
                if arg2 != 3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 57, code.data[20873 len 57], mem[221 len 7]
    bets[arg1].field_3072 = arg2
}

function sub_929bd6aa(?) {
    require calldata.size - 4 >= 352
    sub_de22c8d4[arg2].field_0 = arg1
    sub_de22c8d4[arg2].field_256 = sub_41e3ac7e
    sub_de22c8d4[arg2].field_512 = arg3
    sub_de22c8d4[arg2].field_768 = arg4
    sub_de22c8d4[arg2].field_1024 = arg5
    sub_de22c8d4[arg2].field_1280 = arg6
    sub_de22c8d4[arg2].field_1536 = arg7
    sub_de22c8d4[arg2].field_1792 = arg8
    sub_de22c8d4[arg2].field_2048 = arg9
    sub_de22c8d4[arg2].field_2304 = block.timestamp
    sub_de22c8d4[arg2].field_2560 = uint8(arg10)
    sub_de22c8d4[arg2].field_2568 = Mask(248, 0, arg11)
}

function sub_1c14bc82(?) {
    require calldata.size - 4 >= 32
    stats[arg1].field_0 = eth.balance(bets[arg1].field_0)
    require bets[arg1].field_1792 + bets[arg1].field_2048
    stats[arg1].field_512 = 10000 * bets[arg1].field_2048 / bets[arg1].field_1792 + bets[arg1].field_2048
    require bets[arg1].field_1792 + bets[arg1].field_2048
    stats[arg1].field_256 = 10000 * bets[arg1].field_1792 / bets[arg1].field_1792 + bets[arg1].field_2048
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x1eac76ba with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stats[arg1].field_768 = ext_call.return_data[0]
}

function sub_507b9328(?) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bets[arg1].field_2560 -= bets[arg1][3][arg2].field_512
    bets[arg1].field_2048 -= bets[arg1][3][arg2].field_256
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bets[arg1].field_256, bets[arg1][3][arg2].field_512 * ext_call.return_data[0] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bets[arg1].field_0)
    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bets[arg1][3][arg2].field_0, bets[arg1][3][arg2].field_512 - (bets[arg1][3][arg2].field_512 * ext_call.return_data[0] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bets[arg1][3][arg2].field_512 = 0
    bets[arg1][3][arg2].field_256 = 0
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x929bd6aa with:
         gas gas_remaining wei
        args 0, uint32(arg1), bets[arg1][3][arg2].field_768, arg2, bets[arg1].field_0, tx.origin, 0, 0, 0, 0, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_84f95a41(?) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bets[arg1].field_2304 -= bets[arg1][2][arg2].field_512
    bets[arg1].field_1792 -= bets[arg1][2][arg2].field_256
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bets[arg1].field_256, bets[arg1][2][arg2].field_512 * ext_call.return_data[0] / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bets[arg1].field_0)
    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bets[arg1][2][arg2].field_0, bets[arg1][2][arg2].field_512 - (bets[arg1][2][arg2].field_512 * ext_call.return_data[0] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bets[arg1][2][arg2].field_512 = 0
    bets[arg1][2][arg2].field_256 = 0
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x929bd6aa with:
         gas gas_remaining wei
        args 0, uint32(arg1), bets[arg1][2][arg2].field_768, arg2, bets[arg1].field_0, tx.origin, 0, 0, 0, 0, 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ba9ac4c8(?) payable {
    require calldata.size - 4 >= 32
    if bets[arg1].field_3072 != 3:
        revert with 0, 'this bet is already resolved'
    call bets[arg1].field_0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x1eac76ba with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bets[arg1].field_1792 + bets[arg1].field_2048
    require 10000 * bets[arg1].field_1792 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000
    bets[arg1][2][bets[arg1].field_1024].field_0 = msg.sender
    bets[arg1].field_1792 += msg.value / 10000 * bets[arg1].field_1792 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000
    bets[arg1][2][bets[arg1].field_1024].field_256 = msg.value / 10000 * bets[arg1].field_1792 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000
    bets[arg1][2][bets[arg1].field_1024].field_512 = msg.value
    bets[arg1].field_2304 += msg.value
    bets[arg1][2][bets[arg1].field_1024].field_768 = sub_41e3ac7e
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x929bd6aa with:
         gas gas_remaining wei
        args 0, uint32(arg1), sub_41e3ac7e, bets[arg1].field_1024, bets[arg1].field_0, tx.origin, msg.value / 10000 * bets[arg1].field_1792 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000, msg.value, 0, 0, 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bets[arg1].field_1024++
    sub_41e3ac7e++
}

function sub_d1fa8b4f(?) payable {
    require calldata.size - 4 >= 32
    if bets[arg1].field_3072 != 3:
        revert with 0, 'this bet is already resolved'
    call bets[arg1].field_0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x1eac76ba with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bets[arg1].field_1792 + bets[arg1].field_2048
    require 10000 * bets[arg1].field_2048 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000
    bets[arg1][3][bets[arg1].field_1280].field_0 = msg.sender
    bets[arg1].field_2048 += msg.value / 10000 * bets[arg1].field_2048 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000
    bets[arg1][3][bets[arg1].field_1280].field_256 = msg.value / 10000 * bets[arg1].field_2048 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000
    bets[arg1][3][bets[arg1].field_1280].field_512 = msg.value
    bets[arg1].field_2560 += msg.value
    bets[arg1][3][bets[arg1].field_1280].field_768 = sub_41e3ac7e
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x929bd6aa with:
         gas gas_remaining wei
        args 0, uint32(arg1), sub_41e3ac7e, bets[arg1].field_1280, bets[arg1].field_0, tx.origin, 0, 0, msg.value / 10000 * bets[arg1].field_2048 * ext_call.return_data[0] / bets[arg1].field_1792 + bets[arg1].field_2048 / 10000, msg.value, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bets[arg1].field_1280++
    sub_41e3ac7e++
}

function sub_550692d7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 100:
        revert with 0, 32, 88, code.data[20785 len 88], mem[ceil32(arg1.length) + 284 len 8]
    mem[ceil32(arg1.length) + 128 len 2603] = code.data[18182 len 2603]
    mem[ceil32(arg1.length) + 2955 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 18214 len -arg1.length + ceil32(arg1.length) + 2571], address(this.address), Array(len=arg4, data=arg5, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), arg2, arg3
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 2955] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 2987 len arg1.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 18214 len -arg1.length + ceil32(arg1.length) + 2571], address(this.address), Array(len=arg4, data=arg5, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 2955 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), arg2, arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    bets[stor5].field_0 = address(create.new_address)
    bets[stor5].field_256 = msg.sender
    bets[stor5].field_1536 = arg2
    bets[stor5].field_1792 = arg2
    bets[stor5].field_2048 = -arg2 + 100
    bets[stor5][11][].field_0 = Array(len=arg1.length, data=arg1[all])
    bets[stor5].field_3072 = 3
    bets[stor5].field_3328 = index
    bets[stor5].field_3584 = 0
    bets[stor5].field_3592 = address(create.new_address)
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args index
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    index++
}

function sub_8a874dea(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bets[arg1].field_256, (bets[arg1].field_2304 * ext_call.return_data[0] / 10000) + (bets[arg1].field_2560 * ext_call.return_data[0] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < bets[arg1].field_1024:
        require bets[arg1].field_2304
        mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
        mem[100] = bets[arg1][2][idx].field_0
        mem[132] = (bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000
        require ext_code.size(bets[arg1].field_0)
        call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args bets[arg1][2][idx].field_0, (bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    idx = 0
    while idx < bets[arg1].field_1280:
        require bets[arg1].field_2560
        mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
        mem[100] = bets[arg1][3][idx].field_0
        mem[132] = (bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000
        require ext_code.size(bets[arg1].field_0)
        call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args bets[arg1][3][idx].field_0, (bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_15dbfc7b(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.adminfee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.adminfee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bets[arg1].field_256, (2 * bets[arg1].field_2304 * ext_call.return_data[0] / 10000) + (2 * bets[arg1].field_2560 * ext_call.return_data[0] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < bets[arg1].field_1024:
        require bets[arg1].field_2304
        require bets[arg1].field_1792 - bets[arg1].field_1536
        mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
        mem[100] = bets[arg1][2][idx].field_0
        mem[132] = ((bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000) + ((bets[arg1].field_2560 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) / 10000)
        require ext_code.size(bets[arg1].field_0)
        call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args bets[arg1][2][idx].field_0, ((bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000) + ((bets[arg1].field_2560 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3297008e(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.adminfee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.adminfee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    staticcall bets[arg1].field_0.0x677016 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bets[arg1].field_0)
    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args bets[arg1].field_256, (2 * bets[arg1].field_2304 * ext_call.return_data[0] / 10000) + (2 * bets[arg1].field_2560 * ext_call.return_data[0] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < bets[arg1].field_1280:
        require bets[arg1].field_2560
        require bets[arg1].field_2048 + bets[arg1].field_1536 - 100
        mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
        mem[100] = bets[arg1][3][idx].field_0
        mem[132] = ((bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000) + ((bets[arg1].field_2304 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) / 10000)
        require ext_code.size(bets[arg1].field_0)
        call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args bets[arg1][3][idx].field_0, ((bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000) + ((bets[arg1].field_2304 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function resolve(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bets[arg1].field_3072 == 3:
        revert with 0, 'contract oracle not resolved'
    if bets[arg1].field_3584:
        revert with 0, 'no double resolving'
    if not bets[arg1].field_3072:
        if _owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require ext_code.size(bets[arg1].field_0)
        staticcall bets[arg1].field_0.adminfee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bets[arg1].field_0)
        staticcall bets[arg1].field_0.0x677016 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bets[arg1].field_0)
        staticcall bets[arg1].field_0.adminfee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bets[arg1].field_0)
        staticcall bets[arg1].field_0.0x677016 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bets[arg1].field_0)
        call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args bets[arg1].field_256, (2 * bets[arg1].field_2304 * ext_call.return_data[0] / 10000) + (2 * bets[arg1].field_2560 * ext_call.return_data[0] / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < bets[arg1].field_1280:
            require bets[arg1].field_2560
            require bets[arg1].field_2048 + bets[arg1].field_1536 - 100
            mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
            mem[100] = bets[arg1][3][idx].field_0
            mem[132] = ((bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000) + ((bets[arg1].field_2304 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) / 10000)
            require ext_code.size(bets[arg1].field_0)
            call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args bets[arg1][3][idx].field_0, ((bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000) + ((bets[arg1].field_2304 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_256 / bets[arg1].field_2048 + bets[arg1].field_1536 - 100) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        require ext_code.size(this.address)
        call this.address.0x1c14bc82 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if bets[arg1].field_3072 != 1:
            if bets[arg1].field_3072 == 2:
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(bets[arg1].field_0)
                staticcall bets[arg1].field_0.0x677016 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(bets[arg1].field_0)
                staticcall bets[arg1].field_0.0x677016 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(bets[arg1].field_0)
                call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args bets[arg1].field_256, (bets[arg1].field_2304 * ext_call.return_data[0] / 10000) + (bets[arg1].field_2560 * ext_call.return_data[0] / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < bets[arg1].field_1024:
                    require bets[arg1].field_2304
                    mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
                    mem[100] = bets[arg1][2][idx].field_0
                    mem[132] = (bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000
                    require ext_code.size(bets[arg1].field_0)
                    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args bets[arg1][2][idx].field_0, (bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < bets[arg1].field_1280:
                    require bets[arg1].field_2560
                    mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
                    mem[100] = bets[arg1][3][idx].field_0
                    mem[132] = (bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000
                    require ext_code.size(bets[arg1].field_0)
                    call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args bets[arg1][3][idx].field_0, (bets[arg1].field_2560 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][3][idx].field_512 / bets[arg1].field_2560) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                require ext_code.size(this.address)
                call this.address.0x1c14bc82 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if _owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(bets[arg1].field_0)
            staticcall bets[arg1].field_0.adminfee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bets[arg1].field_0)
            staticcall bets[arg1].field_0.0x677016 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bets[arg1].field_0)
            staticcall bets[arg1].field_0.adminfee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bets[arg1].field_0)
            staticcall bets[arg1].field_0.0x677016 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(bets[arg1].field_0)
            call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args bets[arg1].field_256, (2 * bets[arg1].field_2304 * ext_call.return_data[0] / 10000) + (2 * bets[arg1].field_2560 * ext_call.return_data[0] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < bets[arg1].field_1024:
                require bets[arg1].field_2304
                require bets[arg1].field_1792 - bets[arg1].field_1536
                mem[96] = 0x117de2fd00000000000000000000000000000000000000000000000000000000
                mem[100] = bets[arg1][2][idx].field_0
                mem[132] = ((bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000) + ((bets[arg1].field_2560 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) / 10000)
                require ext_code.size(bets[arg1].field_0)
                call bets[arg1].field_0.payout(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args bets[arg1][2][idx].field_0, ((bets[arg1].field_2304 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) - (bets[arg1].field_2304 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_512 / bets[arg1].field_2304) / 10000) + ((bets[arg1].field_2560 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) - (bets[arg1].field_2560 * ext_call.return_data[0] / 10000 * 10000 * bets[arg1][2][idx].field_256 / bets[arg1].field_1792 - bets[arg1].field_1536) / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            require ext_code.size(this.address)
            call this.address.0x1c14bc82 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0x1c14bc82 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bets[arg1].field_3584 = 1
}



}
