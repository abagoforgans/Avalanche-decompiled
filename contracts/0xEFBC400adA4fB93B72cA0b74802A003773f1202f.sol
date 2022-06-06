contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_66c87f6fAddress;
address landAddress;
address sub_e152bb8fAddress;
mapping of uint256 sub_b6ba4663;
uint256 stor105;
uint256 sub_c8691afe;
mapping of uint256 sub_b76a01a6;
uint256 sub_5cf590d9;

function sub_1264ea0b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_b6ba4663[arg1][arg2]
}

function sub_5cf590d9(?) payable {
    return sub_5cf590d9
}

function sub_66c87f6f(?) payable {
    return sub_66c87f6fAddress
}

function land() payable {
    return landAddress
}

function owner() payable {
    return owner
}

function sub_b6ba4663(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_b6ba4663[arg1][arg2]
}

function sub_b76a01a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b76a01a6[arg1]
}

function sub_c8691afe(?) payable {
    return uint256(sub_c8691afe)
}

function sub_e152bb8f(?) payable {
    return sub_e152bb8fAddress
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

function sub_3fc7bcef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Slot can not be 0.'
    uint256(sub_c8691afe) = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xe08307600000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000)
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_17bf4727(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if sub_b76a01a6[1]:
        revert with 0, 'Already initialized.'
    sub_b76a01a6[1] = arg1
    sub_b76a01a6[2] = arg2
    sub_b76a01a6[3] = arg3
    sub_b76a01a6[4] = arg4
    sub_b76a01a6[5] = arg5
    sub_b76a01a6[6] = arg6
    sub_b76a01a6[7] = arg7
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_e152bb8fAddress = arg3
    landAddress = arg1
    sub_66c87f6fAddress = arg2
    uint256(sub_c8691afe) = arg4
    sub_5cf590d9 = arg5
}

function sub_efd2944c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(sub_c8691afe) and 2 > -1 / uint256(sub_c8691afe):
        revert with 'NH{q', 17
    if 2 * uint256(sub_c8691afe) > test266151307():
        revert with 'NH{q', 65
    if uint255(stor105):
        mem[128 len 64 * uint256(sub_c8691afe)] = call.data[calldata.size len 64 * uint256(sub_c8691afe)]
    idx = 0
    s = 0
    while idx < uint256(sub_c8691afe):
        mem[0] = idx
        mem[32] = sha3(arg1, 104)
        if not sub_b6ba4663[arg1][idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s >= 2 * uint256(sub_c8691afe):
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = idx
        mem[0] = idx
        mem[32] = sha3(arg1, 104)
        if s > -2:
            revert with 'NH{q', 17
        if s + 1 >= 2 * uint256(sub_c8691afe):
            revert with 'NH{q', 50
        mem[(32 * s + 1) + 128] = sub_b6ba4663[arg1][idx]
        if s > -3:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 2
        continue 
    return Array(len=2 * uint256(sub_c8691afe), data=mem[128 len 64 * uint256(sub_c8691afe)])
}

function build(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not occupier of this land.'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract can not build.'
    if arg3 <= 0:
        revert with 0, 'Wrong buildings.'
    if arg3 >= 6:
        revert with 0, 'Wrong buildings.'
    if sub_b6ba4663[arg1][arg2]:
        revert with 0, 'There is a building already.'
    if arg2 <= 0:
        revert with 0, 'Wrong position.'
    if arg2 > uint256(sub_c8691afe):
        revert with 0, 'Wrong position.'
    require ext_code.size(sub_66c87f6fAddress)
    call sub_66c87f6fAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b6ba4663[arg1][arg2] = arg3
    emit 0x428b559d: arg3, msg.sender, arg1, arg2
}

function sub_5a7b71da(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not occupier of this land.'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract can not build.'
    if arg3 <= 0:
        revert with 0, 'Wrong buildings.'
    if arg3 >= 6:
        revert with 0, 'Wrong buildings.'
    if not sub_b6ba4663[arg1][arg2]:
        revert with 0, 'There is no building.'
    if arg2 > uint256(sub_c8691afe):
        revert with 0, 'Wrong position.'
    require ext_code.size(sub_66c87f6fAddress)
    call sub_66c87f6fAddress.burn(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), arg3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b6ba4663[arg1][arg2] = 0
    if not sub_b76a01a6[arg3]:
        require ext_code.size(sub_e152bb8fAddress)
        call sub_e152bb8fAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if not sub_b76a01a6[arg3]:
            revert with 'NH{q', 18
        require ext_code.size(sub_e152bb8fAddress)
        if sub_b76a01a6[arg3] * sub_5cf590d9 / sub_b76a01a6[arg3] == sub_5cf590d9:
            call sub_e152bb8fAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_b76a01a6[arg3] * sub_5cf590d9 / 100
        else:
            call sub_e152bb8fAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x4bab09b5: arg3, msg.sender, arg1, arg2
}



}
