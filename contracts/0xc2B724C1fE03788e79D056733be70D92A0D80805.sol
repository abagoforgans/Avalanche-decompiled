contract main {




// =====================  Runtime code  =====================


const sub_692ff94b(?) = 0x942d791ab07e33fe4b780fc0b3874a24ac3da433


address owner;
uint256 stor1;
uint256 startTime;
uint256 sub_2398fae0;
uint256 sub_ea91eb61;
mapping of uint8 stor5;

function sub_2398fae0(?) payable {
    return sub_2398fae0
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function sub_ea91eb61(?) payable {
    return sub_ea91eb61
}

function recipients(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
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

function sub_944044a1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
    emit 0x5f1be006: arg1
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_06fb4cb9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    staticcall 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_2398fae0 = ext_call.return_data[0]
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    call 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd18ab7ee: arg1
}

function addRecipients(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeRecipients(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1b048634(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    staticcall 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_2398fae0 = ext_call.return_data[0]
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    staticcall 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x2f745c59 with:
            gas gas_remaining wei
           args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_ea91eb61 = ext_call.return_data[0]
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    call 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_ea91eb61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd18ab7ee: sub_ea91eb61
}

function sub_e6a9a033(?) payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp <= startTime:
        revert with 0, 'E1'
    if not stor5[address(msg.sender)]:
        revert with 0, 'E2'
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    staticcall 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_2398fae0 = ext_call.return_data[0]
    if sub_2398fae0 <= 0:
        revert with 0, 'E3'
    stor5[address(msg.sender)] = 0
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    staticcall 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x2f745c59 with:
            gas gas_remaining wei
           args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_ea91eb61 = ext_call.return_data[0]
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    call 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_ea91eb61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc9f0f8d7: msg.sender
    stor1 = 1
}

function sub_50aa083b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
    staticcall 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_2398fae0 = ext_call.return_data[0]
    idx = 0
    while idx < sub_2398fae0:
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = 0
        require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
        staticcall 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x2f745c59 with:
                gas gas_remaining wei
               args address(this.address), 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == mem[_19]
        sub_ea91eb61 = mem[_19]
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = sub_ea91eb61
        require ext_code.size(0x942d791ab07e33fe4b780fc0b3874a24ac3da433)
        call 0x942d791ab07e33fe4b780fc0b3874a24ac3da433.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sub_ea91eb61
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0xd18ab7ee: sub_2398fae0
}



}
