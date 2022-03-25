contract main {




// =====================  Runtime code  =====================


#
#  - acceptSwap(uint256 arg1)
#  - sub_471b3cd2(?)
#
address owner;
mapping of uint8 stor1;
address mAddress;
array of struct sub_176b8aab;
array of struct sub_873385e0;
mapping of uint8 stor5;
uint256 fee;
mapping of uint256 controllerFunds;
uint256 stor8;

function sub_176b8aab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_176b8aab[address(arg1)].field_0)
}

function m() payable {
    return mAddress
}

function sub_5d6d3502(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < uint256(sub_873385e0[arg1].field_0)
    return address(sub_873385e0[arg1][arg2].field_0), uint256(sub_873385e0[arg1][arg2].field_256)
}

function sub_662b78ba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < uint256(sub_176b8aab[address(arg1)].field_0)
    return uint256(sub_176b8aab[address(arg1)][arg2].field_0), 
           uint256(sub_176b8aab[address(arg1)][arg2].field_256),
           address(sub_176b8aab[address(arg1)][arg2].field_512),
           address(sub_176b8aab[address(arg1)][arg2].field_768),
           uint256(sub_176b8aab[address(arg1)][arg2].field_1024),
           bool(uint8(sub_176b8aab[address(arg1)][arg2].field_1280)),
           bool(uint8(sub_176b8aab[address(arg1)][arg2].field_1288))
}

function sub_6f1299f9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_873385e0[address(arg1)].field_0)
}

function sub_873385e0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < uint256(sub_873385e0[address(arg1)].field_0)
    return address(sub_873385e0[address(arg1)][arg2].field_0), uint256(sub_873385e0[address(arg1)][arg2].field_256)
}

function owner() payable {
    return owner
}

function sub_90139686(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < uint256(sub_176b8aab[arg1].field_0)
    return uint256(sub_176b8aab[arg1][arg2].field_0), 
           uint256(sub_176b8aab[arg1][arg2].field_256),
           address(sub_176b8aab[arg1][arg2].field_512),
           address(sub_176b8aab[arg1][arg2].field_768),
           uint256(sub_176b8aab[arg1][arg2].field_1024),
           bool(uint8(sub_176b8aab[arg1][arg2].field_1280)),
           bool(uint8(sub_176b8aab[arg1][arg2].field_1288))
}

function isWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function fee() payable {
    return fee
}

function controllerFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return controllerFunds[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
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

function renounceWhitelistAdmin() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    fee = arg1
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
    if arg1 != this.address:
        return 0
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_04b4a87b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = bool(stor5[arg1][arg2][arg3[all]])
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function addWhitelistAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
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
    if arg1 != this.address:
        return 0
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_c879c6d8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor8 != 1:
        revert with 0, 'UniftyMarketSwap: LOCKED'
    stor8 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not controllerFunds[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarketSwap#withdrawFee: Insufficient funds.'
    require ext_code.size(mAddress)
    staticcall mAddress.0x23717fe5 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    controllerFunds[ext_call.return_data[12 len 20]] = 0
    if not controllerFunds[address(arg2)]:
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg2) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(mAddress)
            staticcall mAddress.0x23717fe5 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 296] = 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 0, 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor8 = 1
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(mAddress)
        staticcall mAddress.0x23717fe5 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 0, 0) << 288)
    else:
        if 10^18 * controllerFunds[address(arg2)] / controllerFunds[address(arg2)] != 10^18:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = 10^18 * controllerFunds[address(arg2)] / 2 / 10^18
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg2) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(mAddress)
            staticcall mAddress.0x23717fe5 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 296] = 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd
            mem[(2 * ceil32(return_data.size)) + 328] = 10^18 * controllerFunds[address(arg2)] / 2 / 10^18
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor8 = 1
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(mAddress)
        staticcall mAddress.0x23717fe5 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 10^18 * controllerFunds[address(arg2)] / 2 / 10^18
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, 0x95ff48e9dbceafab6217e2b539b2b1f9e9ff66dd, 10^18 * controllerFunds[address(arg2)] / 2 / 10^18, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        stor8 = 1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        stor8 = 1
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        stor8 = 1
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function sub_e55c88f9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor8 != 1:
        revert with 0, 'UniftyMarketSwap: LOCKED'
    stor8 = 0
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 96
    mem[224] = 0
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 96
    mem[480] = 0x6b42fbaf00000000000000000000000000000000000000000000000000000000
    mem[484] = arg2
    require ext_code.size(mAddress)
    staticcall mAddress.0x6b42fbaf with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _7 = mem[480 len 4], Mask(224, 32, arg2) >> 32
    require mem[480 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size - mem[480 len 4], Mask(224, 32, arg2) >> 32 >= 384
    require bool(ceil32(return_data.size) + 864 <= test266151307())
    mem[64] = ceil32(return_data.size) + 864
    require mem[mem[480 len 4], Mask(224, 32, arg2) >> 32 + 480] == mem[mem[480 len 4], Mask(224, 32, arg2) >> 32 + 492 len 20]
    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, arg2) >> 32 + 480]
    _10 = mem[_7 + 512]
    require mem[_7 + 512] <= test266151307()
    require _7 + mem[_7 + 512] + 511 < return_data.size + 480
    _11 = mem[_7 + mem[_7 + 512] + 480]
    require mem[_7 + mem[_7 + 512] + 480] <= test266151307()
    require (32 * mem[_7 + mem[_7 + 512] + 480]) + 416 >= 384 and ceil32(return_data.size) + (32 * mem[_7 + mem[_7 + 512] + 480]) + 896 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_7 + mem[_7 + 512] + 480]) + 896
    mem[ceil32(return_data.size) + 864] = _11
    require _7 + _10 + (32 * _11) + 32 <= return_data.size
    idx = 0
    s = _7 + _10 + 512
    t = ceil32(return_data.size) + 896
    while idx < _11:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 512] = ceil32(return_data.size) + 864
    _46 = mem[_7 + 544]
    require mem[_7 + 544] <= test266151307()
    require _7 + mem[_7 + 544] + 511 < return_data.size + 480
    _48 = mem[_7 + mem[_7 + 544] + 480]
    require mem[_7 + mem[_7 + 544] + 480] <= test266151307()
    _49 = mem[64]
    require mem[64] + (32 * mem[_7 + mem[_7 + 544] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_7 + mem[_7 + 544] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_7 + mem[_7 + 544] + 480]) + 32
    mem[_49] = mem[_7 + mem[_7 + 544] + 480]
    require _7 + _46 + (32 * _48) + 32 <= return_data.size
    idx = 0
    s = _7 + _46 + 512
    t = _49 + 32
    while idx < _48:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 544] = _49
    _95 = mem[_7 + 576]
    require mem[_7 + 576] <= test266151307()
    require _7 + mem[_7 + 576] + 511 < return_data.size + 480
    _97 = mem[_7 + mem[_7 + 576] + 480]
    require mem[_7 + mem[_7 + 576] + 480] <= test266151307()
    _98 = mem[64]
    require mem[64] + (32 * mem[_7 + mem[_7 + 576] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_7 + mem[_7 + 576] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_7 + mem[_7 + 576] + 480]) + 32
    mem[_98] = _97
    require _7 + _95 + (32 * _97) + 32 <= return_data.size
    idx = 0
    s = _7 + _95 + 512
    t = _98 + 32
    while idx < _97:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 576] = _98
    require mem[_7 + 608] == mem[_7 + 620 len 20]
    mem[ceil32(return_data.size) + 608] = mem[_7 + 608]
    _144 = mem[_7 + 640]
    require mem[_7 + 640] <= test266151307()
    require _7 + mem[_7 + 640] + 511 < return_data.size + 480
    _145 = mem[_7 + mem[_7 + 640] + 480]
    require mem[_7 + mem[_7 + 640] + 480] <= test266151307()
    _146 = mem[64]
    require mem[64] + (32 * mem[_7 + mem[_7 + 640] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_7 + mem[_7 + 640] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_7 + mem[_7 + 640] + 480]) + 32
    mem[_146] = _145
    require _7 + _144 + (32 * _145) + 32 <= return_data.size
    idx = 0
    s = _7 + _144 + 512
    t = _146 + 32
    while idx < _145:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 640] = _146
    require mem[_7 + 672] == mem[_7 + 672]
    mem[ceil32(return_data.size) + 672] = mem[_7 + 672]
    require mem[_7 + 704] == mem[_7 + 704]
    mem[ceil32(return_data.size) + 704] = mem[_7 + 704]
    require mem[_7 + 736] == bool(mem[_7 + 736])
    mem[ceil32(return_data.size) + 736] = mem[_7 + 736]
    require mem[_7 + 768] == mem[_7 + 768]
    mem[ceil32(return_data.size) + 768] = mem[_7 + 768]
    require mem[_7 + 800] == mem[_7 + 800]
    mem[ceil32(return_data.size) + 800] = mem[_7 + 800]
    _193 = mem[_7 + 832]
    require mem[_7 + 832] <= test266151307()
    require _7 + mem[_7 + 832] + 511 < return_data.size + 480
    _194 = mem[_7 + mem[_7 + 832] + 480]
    require mem[_7 + mem[_7 + 832] + 480] <= test266151307()
    _195 = mem[64]
    require mem[64] + (32 * mem[_7 + mem[_7 + 832] + 480]) + 32 >= mem[64] and mem[64] + (32 * mem[_7 + mem[_7 + 832] + 480]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_7 + mem[_7 + 832] + 480]) + 32
    mem[_195] = _194
    require _7 + _193 + (32 * _194) + 32 <= return_data.size
    idx = 0
    s = _7 + _193 + 512
    t = _195 + 32
    while idx < _194:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 832] = _195
    _235 = mem[64]
    mem[64] = mem[64] + 384
    mem[_235] = 0
    mem[_235 + 32] = 96
    mem[_235 + 64] = 96
    mem[_235 + 96] = 96
    mem[_235 + 128] = 0
    mem[_235 + 160] = 96
    mem[_235 + 192] = 0
    mem[_235 + 224] = 0
    mem[_235 + 256] = 0
    mem[_235 + 288] = 0
    mem[_235 + 320] = 0
    mem[_235 + 352] = 96
    mem[mem[64]] = 0x6b42fbaf00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    require ext_code.size(mAddress)
    staticcall mAddress.0x6b42fbaf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _238 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _239 = mem[_238]
    require mem[_238] <= test266151307()
    require return_data.size - mem[_238] >= 384
    require bool(_238 + ceil32(return_data.size) + 384 <= test266151307())
    mem[64] = _238 + ceil32(return_data.size) + 384
    require mem[_238 + _239] == mem[_238 + _239 + 12 len 20]
    mem[_238 + ceil32(return_data.size)] = mem[_238 + _239]
    _242 = mem[_238 + _239 + 32]
    require mem[_238 + _239 + 32] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 32] + 31 < _238 + return_data.size
    _243 = mem[_238 + _239 + mem[_238 + _239 + 32]]
    require mem[_238 + _239 + mem[_238 + _239 + 32]] <= test266151307()
    require (32 * mem[_238 + _239 + mem[_238 + _239 + 32]]) + 416 >= 384 and _238 + ceil32(return_data.size) + (32 * mem[_238 + _239 + mem[_238 + _239 + 32]]) + 416 <= test266151307()
    mem[64] = _238 + ceil32(return_data.size) + (32 * mem[_238 + _239 + mem[_238 + _239 + 32]]) + 416
    mem[_238 + ceil32(return_data.size) + 384] = _243
    require _239 + _242 + (32 * _243) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _242 + 32
    t = _238 + ceil32(return_data.size) + 416
    while idx < _243:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 32] = _238 + ceil32(return_data.size) + 384
    _290 = mem[_238 + _239 + 64]
    require mem[_238 + _239 + 64] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 64] + 31 < _238 + return_data.size
    _292 = mem[_238 + _239 + mem[_238 + _239 + 64]]
    require mem[_238 + _239 + mem[_238 + _239 + 64]] <= test266151307()
    _293 = mem[64]
    require mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 64]]) + 32 >= mem[64] and mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 64]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 64]]) + 32
    mem[_293] = _292
    require _239 + _290 + (32 * _292) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _290 + 32
    t = _293 + 32
    while idx < _292:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 64] = _293
    _645 = mem[_238 + _239 + 96]
    require mem[_238 + _239 + 96] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 96] + 31 < _238 + return_data.size
    _647 = mem[_238 + _239 + mem[_238 + _239 + 96]]
    require mem[_238 + _239 + mem[_238 + _239 + 96]] <= test266151307()
    _648 = mem[64]
    require mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 96]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 96]]) + 32
    mem[_648] = _647
    require _239 + _645 + (32 * _647) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _645 + 32
    t = _648 + 32
    while idx < _647:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 96] = _648
    require mem[_238 + _239 + 128] == mem[_238 + _239 + 140 len 20]
    mem[_238 + ceil32(return_data.size) + 128] = mem[_238 + _239 + 128]
    _1116 = mem[_238 + _239 + 160]
    require mem[_238 + _239 + 160] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 160] + 31 < _238 + return_data.size
    _1117 = mem[_238 + _239 + mem[_238 + _239 + 160]]
    require mem[_238 + _239 + mem[_238 + _239 + 160]] <= test266151307()
    _1118 = mem[64]
    require mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 160]]) + 32 >= mem[64] and mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 160]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 160]]) + 32
    mem[_1118] = _1117
    require _239 + _1116 + (32 * _1117) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _1116 + 32
    t = _1118 + 32
    while idx < _1117:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 160] = _1118
    require mem[_238 + _239 + 192] == mem[_238 + _239 + 192]
    mem[_238 + ceil32(return_data.size) + 192] = mem[_238 + _239 + 192]
    require mem[_238 + _239 + 224] == mem[_238 + _239 + 224]
    mem[_238 + ceil32(return_data.size) + 224] = mem[_238 + _239 + 224]
    require mem[_238 + _239 + 256] == bool(mem[_238 + _239 + 256])
    mem[_238 + ceil32(return_data.size) + 256] = mem[_238 + _239 + 256]
    require mem[_238 + _239 + 288] == mem[_238 + _239 + 288]
    mem[_238 + ceil32(return_data.size) + 288] = mem[_238 + _239 + 288]
    require mem[_238 + _239 + 320] == mem[_238 + _239 + 320]
    mem[_238 + ceil32(return_data.size) + 320] = mem[_238 + _239 + 320]
    _1661 = mem[_238 + _239 + 352]
    require mem[_238 + _239 + 352] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 352] + 31 < _238 + return_data.size
    _1662 = mem[_238 + _239 + mem[_238 + _239 + 352]]
    require mem[_238 + _239 + mem[_238 + _239 + 352]] <= test266151307()
    _1663 = mem[64]
    require mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 352]]) + 32 >= mem[64] and mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 352]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 352]]) + 32
    mem[_1663] = _1662
    require _239 + _1661 + (32 * _1662) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _1661 + 32
    t = _1663 + 32
    while idx < _1662:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 352] = _1663
    if msg.sender == mem[_238 + ceil32(return_data.size) + 12 len 20]:
        revert with 0, 'UniftyMarketSwap#acceptSwap: You cannot swap to yourself.'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg2
    require ext_code.size(mAddress)
    staticcall mAddress.0x5e068739 with:
            gas gas_remaining wei
           args msg.sender, arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2373 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2373] == bool(mem[_2373])
    if not mem[_2373]:
        revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex1 sale doesn't exist.'
    if not mem[ceil32(return_data.size) + 704]:
        revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex1 sale doesn't exist.'
    mem[mem[64] + 4] = mem[_238 + ceil32(return_data.size) + 12 len 20]
    mem[mem[64] + 36] = arg1
    require ext_code.size(mAddress)
    staticcall mAddress.0x5e068739 with:
            gas gas_remaining wei
           args mem[mem[64] + 4], arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2387 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2387] == bool(mem[_2387])
    if not mem[_2387]:
        revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 sale doesn't exist.'
    if not mem[_238 + ceil32(return_data.size) + 224]:
        revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 sale doesn't exist.'
    if 1 == mem[_238 + ceil32(return_data.size) + 288]:
        if not mem[_238 + ceil32(return_data.size) + 256]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 or _index1 not released yet.'
        if not mem[ceil32(return_data.size) + 736]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 or _index1 not released yet.'
        if mem[_238 + ceil32(return_data.size) + 320]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 has been updated. Not swappable.'
        if mem[ceil32(return_data.size) + 800]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex1 has been updated. Not swappable.'
        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
        _2414 = sha3(mem[0], 5)
        mem[0] = msg.sender
        mem[32] = _2414
        _2416 = mem[64]
        mem[mem[64] + 32] = arg1
        _2449 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _2454 = mem[_2449]
        mem[_2416 + 64 len ceil32(mem[_2449])] = mem[_2449 + 32 len ceil32(mem[_2449])]
        mem[_2454 + _2416 + 64] = sha3(msg.sender, _2414)
        if uint8(stor[sha3(mem[mem[64] len _2454 + _2416 + -mem[64] + 96])].field_0):
            revert with 0, 'UniftyMarketSwap#requestSwap: Swap request exists already.'
        if ceil32(_2454) <= _2454:
            if not arg3:
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4873 = sha3(mem[0], 3)
                _4874 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4874] = arg1
                mem[_4874 + 32] = arg2
                mem[_4874 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4874 + 96] = msg.sender
                mem[_4874 + 128] = arg3
                mem[_4874 + 160] = 0
                mem[_4874 + 192] = 0
                uint256(stor[_4873].field_0)++
                uint256(stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0))].field_0) = arg1
                uint256(stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0)) + 2].field_0) = mem[_4874 + 76 len 20]
                address(stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4873) + (6 * uint256(stor[_4873].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _4885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4885] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_4885 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_4885 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_4885 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5020 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5020
                _5022 = mem[64]
                mem[mem[64] + 32] = arg1
                _5088 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5100 = mem[_5088]
                mem[_5022 + 64 len ceil32(mem[_5088])] = mem[_5088 + 32 len ceil32(mem[_5088])]
                mem[_5100 + _5022 + 64] = sha3(msg.sender, _5020)
                uint8(stor[sha3(mem[mem[64] len _5100 + _5022 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5100) <= _5100:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8053 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8100 = mem[_8053]
                        require mem[_8053] == mem[_8053 + 12 len 20]
                        _8132 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8260 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8132 + 132] = 32
                        mem[_8132 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8100)):
                            revert with 0, 'Address: call to non-contract'
                        _8356 = mem[_8260]
                        mem[_8132 + 196 len ceil32(mem[_8260])] = mem[_8260 + 32 len ceil32(mem[_8260])]
                        if ceil32(_8356) > _8356:
                            mem[_8356 + _8132 + 196] = 0
                        call address(_8100) with:
                             gas gas_remaining wei
                            args mem[_8132 + 200 len _8356 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8132 + 196] = msg.sender
                            mem[_8132 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8132 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8132 + ceil32(return_data.size) + 197
                            mem[_8132 + 196] = return_data.size
                            mem[_8132 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8132 + 228] == bool(mem[_8132 + 228])
                                if not mem[_8132 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8132 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8132 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8101 = mem[_8055]
                        require mem[_8055] == mem[_8055 + 12 len 20]
                        _8133 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8262 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8133 + 132] = 32
                        mem[_8133 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8101)):
                            revert with 0, 'Address: call to non-contract'
                        _8358 = mem[_8262]
                        mem[_8133 + 196 len ceil32(mem[_8262])] = mem[_8262 + 32 len ceil32(mem[_8262])]
                        if ceil32(_8358) > _8358:
                            mem[_8358 + _8133 + 196] = 0
                        call address(_8101) with:
                             gas gas_remaining wei
                            args mem[_8133 + 200 len _8358 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8133 + 196] = msg.sender
                            mem[_8133 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8133 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8133 + ceil32(return_data.size) + 197
                            mem[_8133 + 196] = return_data.size
                            mem[_8133 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8133 + 228] == bool(mem[_8133 + 228])
                                if not mem[_8133 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8133 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8133 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4941 = sha3(mem[0], 3)
                _4942 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4942] = arg1
                mem[_4942 + 32] = arg2
                mem[_4942 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4942 + 96] = msg.sender
                mem[_4942 + 128] = arg3
                mem[_4942 + 160] = 0
                mem[_4942 + 192] = 0
                uint256(stor[_4941].field_0)++
                uint256(stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0))].field_0) = arg1
                uint256(stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0)) + 2].field_0) = mem[_4942 + 76 len 20]
                address(stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4941) + (6 * uint256(stor[_4941].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _4953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4953] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_4953 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_4953 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_4953 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5052 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5052
                _5054 = mem[64]
                mem[mem[64] + 32] = arg1
                _5096 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5104 = mem[_5096]
                mem[_5054 + 64 len ceil32(mem[_5096])] = mem[_5096 + 32 len ceil32(mem[_5096])]
                mem[_5104 + _5054 + 64] = sha3(msg.sender, _5052)
                uint8(stor[sha3(mem[mem[64] len _5104 + _5054 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5104) <= _5104:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8057 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8102 = mem[_8057]
                        require mem[_8057] == mem[_8057 + 12 len 20]
                        _8134 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8264 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8134 + 132] = 32
                        mem[_8134 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8102)):
                            revert with 0, 'Address: call to non-contract'
                        _8360 = mem[_8264]
                        mem[_8134 + 196 len ceil32(mem[_8264])] = mem[_8264 + 32 len ceil32(mem[_8264])]
                        if ceil32(_8360) > _8360:
                            mem[_8360 + _8134 + 196] = 0
                        call address(_8102) with:
                             gas gas_remaining wei
                            args mem[_8134 + 200 len _8360 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8134 + 196] = msg.sender
                            mem[_8134 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8134 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8134 + ceil32(return_data.size) + 197
                            mem[_8134 + 196] = return_data.size
                            mem[_8134 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8134 + 228] == bool(mem[_8134 + 228])
                                if not mem[_8134 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8134 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8134 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8059 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8103 = mem[_8059]
                        require mem[_8059] == mem[_8059 + 12 len 20]
                        _8135 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8266 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8135 + 132] = 32
                        mem[_8135 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8103)):
                            revert with 0, 'Address: call to non-contract'
                        _8362 = mem[_8266]
                        mem[_8135 + 196 len ceil32(mem[_8266])] = mem[_8266 + 32 len ceil32(mem[_8266])]
                        if ceil32(_8362) > _8362:
                            mem[_8362 + _8135 + 196] = 0
                        call address(_8103) with:
                             gas gas_remaining wei
                            args mem[_8135 + 200 len _8362 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8135 + 196] = msg.sender
                            mem[_8135 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8135 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8135 + ceil32(return_data.size) + 197
                            mem[_8135 + 196] = return_data.size
                            mem[_8135 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8135 + 228] == bool(mem[_8135 + 228])
                                if not mem[_8135 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8135 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8135 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
        else:
            if not arg3:
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4890 = sha3(mem[0], 3)
                _4891 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4891] = arg1
                mem[_4891 + 32] = arg2
                mem[_4891 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4891 + 96] = msg.sender
                mem[_4891 + 128] = arg3
                mem[_4891 + 160] = 0
                mem[_4891 + 192] = 0
                uint256(stor[_4890].field_0)++
                uint256(stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0))].field_0) = arg1
                uint256(stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0)) + 2].field_0) = mem[_4891 + 76 len 20]
                address(stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4890) + (6 * uint256(stor[_4890].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _4902 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4902] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_4902 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_4902 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_4902 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5028 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5028
                _5030 = mem[64]
                mem[mem[64] + 32] = arg1
                _5090 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5101 = mem[_5090]
                mem[_5030 + 64 len ceil32(mem[_5090])] = mem[_5090 + 32 len ceil32(mem[_5090])]
                mem[_5101 + _5030 + 64] = sha3(msg.sender, _5028)
                uint8(stor[sha3(mem[mem[64] len _5101 + _5030 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5101) <= _5101:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8061 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8104 = mem[_8061]
                        require mem[_8061] == mem[_8061 + 12 len 20]
                        _8136 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8268 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8136 + 132] = 32
                        mem[_8136 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8104)):
                            revert with 0, 'Address: call to non-contract'
                        _8364 = mem[_8268]
                        mem[_8136 + 196 len ceil32(mem[_8268])] = mem[_8268 + 32 len ceil32(mem[_8268])]
                        if ceil32(_8364) > _8364:
                            mem[_8364 + _8136 + 196] = 0
                        call address(_8104) with:
                             gas gas_remaining wei
                            args mem[_8136 + 200 len _8364 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8136 + 196] = msg.sender
                            mem[_8136 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8136 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8136 + ceil32(return_data.size) + 197
                            mem[_8136 + 196] = return_data.size
                            mem[_8136 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8136 + 228] == bool(mem[_8136 + 228])
                                if not mem[_8136 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8136 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8136 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8063 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8105 = mem[_8063]
                        require mem[_8063] == mem[_8063 + 12 len 20]
                        _8137 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8270 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8137 + 132] = 32
                        mem[_8137 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8105)):
                            revert with 0, 'Address: call to non-contract'
                        _8366 = mem[_8270]
                        mem[_8137 + 196 len ceil32(mem[_8270])] = mem[_8270 + 32 len ceil32(mem[_8270])]
                        if ceil32(_8366) > _8366:
                            mem[_8366 + _8137 + 196] = 0
                        call address(_8105) with:
                             gas gas_remaining wei
                            args mem[_8137 + 200 len _8366 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8137 + 196] = msg.sender
                            mem[_8137 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8137 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8137 + ceil32(return_data.size) + 197
                            mem[_8137 + 196] = return_data.size
                            mem[_8137 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8137 + 228] == bool(mem[_8137 + 228])
                                if not mem[_8137 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8137 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8137 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4959 = sha3(mem[0], 3)
                _4960 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4960] = arg1
                mem[_4960 + 32] = arg2
                mem[_4960 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4960 + 96] = msg.sender
                mem[_4960 + 128] = arg3
                mem[_4960 + 160] = 0
                mem[_4960 + 192] = 0
                uint256(stor[_4959].field_0)++
                uint256(stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0))].field_0) = arg1
                uint256(stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0)) + 2].field_0) = mem[_4960 + 76 len 20]
                address(stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4959) + (6 * uint256(stor[_4959].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _4971 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4971] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_4971 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_4971 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_4971 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5059 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5059
                _5061 = mem[64]
                mem[mem[64] + 32] = arg1
                _5097 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5105 = mem[_5097]
                mem[_5061 + 64 len ceil32(mem[_5097])] = mem[_5097 + 32 len ceil32(mem[_5097])]
                mem[_5105 + _5061 + 64] = sha3(msg.sender, _5059)
                uint8(stor[sha3(mem[mem[64] len _5105 + _5061 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5105) <= _5105:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8106 = mem[_8065]
                        require mem[_8065] == mem[_8065 + 12 len 20]
                        _8138 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8272 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8138 + 132] = 32
                        mem[_8138 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8106)):
                            revert with 0, 'Address: call to non-contract'
                        _8368 = mem[_8272]
                        mem[_8138 + 196 len ceil32(mem[_8272])] = mem[_8272 + 32 len ceil32(mem[_8272])]
                        if ceil32(_8368) > _8368:
                            mem[_8368 + _8138 + 196] = 0
                        call address(_8106) with:
                             gas gas_remaining wei
                            args mem[_8138 + 200 len _8368 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8138 + 196] = msg.sender
                            mem[_8138 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8138 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8138 + ceil32(return_data.size) + 197
                            mem[_8138 + 196] = return_data.size
                            mem[_8138 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8138 + 228] == bool(mem[_8138 + 228])
                                if not mem[_8138 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8138 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8138 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8107 = mem[_8067]
                        require mem[_8067] == mem[_8067 + 12 len 20]
                        _8139 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8274 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8139 + 132] = 32
                        mem[_8139 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8107)):
                            revert with 0, 'Address: call to non-contract'
                        _8370 = mem[_8274]
                        mem[_8139 + 196 len ceil32(mem[_8274])] = mem[_8274 + 32 len ceil32(mem[_8274])]
                        if ceil32(_8370) > _8370:
                            mem[_8370 + _8139 + 196] = 0
                        call address(_8107) with:
                             gas gas_remaining wei
                            args mem[_8139 + 200 len _8370 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8139 + 196] = msg.sender
                            mem[_8139 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8139 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8139 + ceil32(return_data.size) + 197
                            mem[_8139 + 196] = return_data.size
                            mem[_8139 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8139 + 228] == bool(mem[_8139 + 228])
                                if not mem[_8139 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8139 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8139 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
    else:
        if mem[_238 + ceil32(return_data.size) + 288] != 2:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 doesn't allow swapping.'
        if not mem[_238 + ceil32(return_data.size) + 256]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 or _index1 not released yet.'
        if not mem[ceil32(return_data.size) + 736]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 or _index1 not released yet.'
        if mem[_238 + ceil32(return_data.size) + 320]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex0 has been updated. Not swappable.'
        if mem[ceil32(return_data.size) + 800]:
            revert with 0, 'eUniftyMarketSwap#requestSwap: _ndex1 has been updated. Not swappable.'
        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
        _2425 = sha3(mem[0], 5)
        mem[0] = msg.sender
        mem[32] = _2425
        _2427 = mem[64]
        mem[mem[64] + 32] = arg1
        _2452 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _2455 = mem[_2452]
        mem[_2427 + 64 len ceil32(mem[_2452])] = mem[_2452 + 32 len ceil32(mem[_2452])]
        mem[_2455 + _2427 + 64] = sha3(msg.sender, _2425)
        if uint8(stor[sha3(mem[mem[64] len _2455 + _2427 + -mem[64] + 96])].field_0):
            revert with 0, 'UniftyMarketSwap#requestSwap: Swap request exists already.'
        if ceil32(_2455) <= _2455:
            if not arg3:
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4907 = sha3(mem[0], 3)
                _4908 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4908] = arg1
                mem[_4908 + 32] = arg2
                mem[_4908 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4908 + 96] = msg.sender
                mem[_4908 + 128] = arg3
                mem[_4908 + 160] = 0
                mem[_4908 + 192] = 0
                uint256(stor[_4907].field_0)++
                uint256(stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0))].field_0) = arg1
                uint256(stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0)) + 2].field_0) = mem[_4908 + 76 len 20]
                address(stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4907) + (6 * uint256(stor[_4907].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _4919 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4919] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_4919 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_4919 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_4919 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5036 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5036
                _5038 = mem[64]
                mem[mem[64] + 32] = arg1
                _5092 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5102 = mem[_5092]
                mem[_5038 + 64 len ceil32(mem[_5092])] = mem[_5092 + 32 len ceil32(mem[_5092])]
                mem[_5102 + _5038 + 64] = sha3(msg.sender, _5036)
                uint8(stor[sha3(mem[mem[64] len _5102 + _5038 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5102) <= _5102:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8108 = mem[_8069]
                        require mem[_8069] == mem[_8069 + 12 len 20]
                        _8140 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8276 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8140 + 132] = 32
                        mem[_8140 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8108)):
                            revert with 0, 'Address: call to non-contract'
                        _8372 = mem[_8276]
                        mem[_8140 + 196 len ceil32(mem[_8276])] = mem[_8276 + 32 len ceil32(mem[_8276])]
                        if ceil32(_8372) > _8372:
                            mem[_8372 + _8140 + 196] = 0
                        call address(_8108) with:
                             gas gas_remaining wei
                            args mem[_8140 + 200 len _8372 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8140 + 196] = msg.sender
                            mem[_8140 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8140 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8140 + ceil32(return_data.size) + 197
                            mem[_8140 + 196] = return_data.size
                            mem[_8140 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8140 + 228] == bool(mem[_8140 + 228])
                                if not mem[_8140 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8140 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8140 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8109 = mem[_8071]
                        require mem[_8071] == mem[_8071 + 12 len 20]
                        _8141 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8278 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8141 + 132] = 32
                        mem[_8141 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8109)):
                            revert with 0, 'Address: call to non-contract'
                        _8374 = mem[_8278]
                        mem[_8141 + 196 len ceil32(mem[_8278])] = mem[_8278 + 32 len ceil32(mem[_8278])]
                        if ceil32(_8374) > _8374:
                            mem[_8374 + _8141 + 196] = 0
                        call address(_8109) with:
                             gas gas_remaining wei
                            args mem[_8141 + 200 len _8374 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8141 + 196] = msg.sender
                            mem[_8141 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8141 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8141 + ceil32(return_data.size) + 197
                            mem[_8141 + 196] = return_data.size
                            mem[_8141 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8141 + 228] == bool(mem[_8141 + 228])
                                if not mem[_8141 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8141 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8141 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4977 = sha3(mem[0], 3)
                _4978 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4978] = arg1
                mem[_4978 + 32] = arg2
                mem[_4978 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4978 + 96] = msg.sender
                mem[_4978 + 128] = arg3
                mem[_4978 + 160] = 0
                mem[_4978 + 192] = 0
                uint256(stor[_4977].field_0)++
                uint256(stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0))].field_0) = arg1
                uint256(stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0)) + 2].field_0) = mem[_4978 + 76 len 20]
                address(stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4977) + (6 * uint256(stor[_4977].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _4989 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4989] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_4989 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_4989 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_4989 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5066 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5066
                _5068 = mem[64]
                mem[mem[64] + 32] = arg1
                _5098 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5106 = mem[_5098]
                mem[_5068 + 64 len ceil32(mem[_5098])] = mem[_5098 + 32 len ceil32(mem[_5098])]
                mem[_5106 + _5068 + 64] = sha3(msg.sender, _5066)
                uint8(stor[sha3(mem[mem[64] len _5106 + _5068 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5106) <= _5106:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8110 = mem[_8073]
                        require mem[_8073] == mem[_8073 + 12 len 20]
                        _8142 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8280 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8142 + 132] = 32
                        mem[_8142 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8110)):
                            revert with 0, 'Address: call to non-contract'
                        _8376 = mem[_8280]
                        mem[_8142 + 196 len ceil32(mem[_8280])] = mem[_8280 + 32 len ceil32(mem[_8280])]
                        if ceil32(_8376) > _8376:
                            mem[_8376 + _8142 + 196] = 0
                        call address(_8110) with:
                             gas gas_remaining wei
                            args mem[_8142 + 200 len _8376 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8142 + 196] = msg.sender
                            mem[_8142 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8142 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8142 + ceil32(return_data.size) + 197
                            mem[_8142 + 196] = return_data.size
                            mem[_8142 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8142 + 228] == bool(mem[_8142 + 228])
                                if not mem[_8142 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8142 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8142 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8075 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8111 = mem[_8075]
                        require mem[_8075] == mem[_8075 + 12 len 20]
                        _8143 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8282 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8143 + 132] = 32
                        mem[_8143 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8111)):
                            revert with 0, 'Address: call to non-contract'
                        _8378 = mem[_8282]
                        mem[_8143 + 196 len ceil32(mem[_8282])] = mem[_8282 + 32 len ceil32(mem[_8282])]
                        if ceil32(_8378) > _8378:
                            mem[_8378 + _8143 + 196] = 0
                        call address(_8111) with:
                             gas gas_remaining wei
                            args mem[_8143 + 200 len _8378 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8143 + 196] = msg.sender
                            mem[_8143 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8143 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8143 + ceil32(return_data.size) + 197
                            mem[_8143 + 196] = return_data.size
                            mem[_8143 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8143 + 228] == bool(mem[_8143 + 228])
                                if not mem[_8143 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8143 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8143 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
        else:
            if not arg3:
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4924 = sha3(mem[0], 3)
                _4925 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4925] = arg1
                mem[_4925 + 32] = arg2
                mem[_4925 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4925 + 96] = msg.sender
                mem[_4925 + 128] = arg3
                mem[_4925 + 160] = 0
                mem[_4925 + 192] = 0
                uint256(stor[_4924].field_0)++
                uint256(stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0))].field_0) = arg1
                uint256(stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0)) + 2].field_0) = mem[_4925 + 76 len 20]
                address(stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4924) + (6 * uint256(stor[_4924].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _4936 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4936] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_4936 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_4936 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_4936 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5044 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5044
                _5046 = mem[64]
                mem[mem[64] + 32] = arg1
                _5094 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5103 = mem[_5094]
                mem[_5046 + 64 len ceil32(mem[_5094])] = mem[_5094 + 32 len ceil32(mem[_5094])]
                mem[_5103 + _5046 + 64] = sha3(msg.sender, _5044)
                uint8(stor[sha3(mem[mem[64] len _5103 + _5046 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5103) <= _5103:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8077 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8112 = mem[_8077]
                        require mem[_8077] == mem[_8077 + 12 len 20]
                        _8144 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8284 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8144 + 132] = 32
                        mem[_8144 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8112)):
                            revert with 0, 'Address: call to non-contract'
                        _8380 = mem[_8284]
                        mem[_8144 + 196 len ceil32(mem[_8284])] = mem[_8284 + 32 len ceil32(mem[_8284])]
                        if ceil32(_8380) > _8380:
                            mem[_8380 + _8144 + 196] = 0
                        call address(_8112) with:
                             gas gas_remaining wei
                            args mem[_8144 + 200 len _8380 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8144 + 196] = msg.sender
                            mem[_8144 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8144 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8144 + ceil32(return_data.size) + 197
                            mem[_8144 + 196] = return_data.size
                            mem[_8144 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8144 + 228] == bool(mem[_8144 + 228])
                                if not mem[_8144 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8144 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8144 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8079 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8113 = mem[_8079]
                        require mem[_8079] == mem[_8079 + 12 len 20]
                        _8145 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8286 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8145 + 132] = 32
                        mem[_8145 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8113)):
                            revert with 0, 'Address: call to non-contract'
                        _8382 = mem[_8286]
                        mem[_8145 + 196 len ceil32(mem[_8286])] = mem[_8286 + 32 len ceil32(mem[_8286])]
                        if ceil32(_8382) > _8382:
                            mem[_8382 + _8145 + 196] = 0
                        call address(_8113) with:
                             gas gas_remaining wei
                            args mem[_8145 + 200 len _8382 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8145 + 196] = msg.sender
                            mem[_8145 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8145 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8145 + ceil32(return_data.size) + 197
                            mem[_8145 + 196] = return_data.size
                            mem[_8145 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8145 + 228] == bool(mem[_8145 + 228])
                                if not mem[_8145 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8145 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8145 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                _4995 = sha3(mem[0], 3)
                _4996 = mem[64]
                mem[64] = mem[64] + 224
                mem[_4996] = arg1
                mem[_4996 + 32] = arg2
                mem[_4996 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[_4996 + 96] = msg.sender
                mem[_4996 + 128] = arg3
                mem[_4996 + 160] = 0
                mem[_4996 + 192] = 0
                uint256(stor[_4995].field_0)++
                uint256(stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0))].field_0) = arg1
                uint256(stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0)) + 1].field_0) = arg2
                address(stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0)) + 2].field_0) = mem[_4996 + 76 len 20]
                address(stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0)) + 3].field_0) = msg.sender
                uint256(stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0)) + 4].field_0) = arg3
                uint8(stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0)) + 5].field_0) = 0
                Mask(248, 0, stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0)) + 5].field_8) = 0
                Mask(240, 0, stor[sha3(_4995) + (6 * uint256(stor[_4995].field_0)) + 5].field_16) = 0
                mem[0] = msg.sender
                mem[32] = 4
                _5007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5007] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                mem[32] = 3
                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                mem[_5007 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                uint256(sub_873385e0[msg.sender].field_0)++
                mem[0] = sha3(msg.sender, 4)
                address(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_0) = mem[_5007 + 12 len 20]
                uint256(sub_873385e0[msg.sender][uint256(sub_873385e0[msg.sender].field_0)].field_256) = mem[_5007 + 32]
                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                _5073 = sha3(mem[0], 5)
                mem[0] = msg.sender
                mem[32] = _5073
                _5075 = mem[64]
                mem[mem[64] + 32] = arg1
                _5099 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _5107 = mem[_5099]
                mem[_5075 + 64 len ceil32(mem[_5099])] = mem[_5099 + 32 len ceil32(mem[_5099])]
                mem[_5107 + _5075 + 64] = sha3(msg.sender, _5073)
                uint8(stor[sha3(mem[mem[64] len _5107 + _5075 + -mem[64] + 96])].field_0) = 1
                if ceil32(_5107) <= _5107:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8081 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8114 = mem[_8081]
                        require mem[_8081] == mem[_8081 + 12 len 20]
                        _8146 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8288 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8146 + 132] = 32
                        mem[_8146 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8114)):
                            revert with 0, 'Address: call to non-contract'
                        _8384 = mem[_8288]
                        mem[_8146 + 196 len ceil32(mem[_8288])] = mem[_8288 + 32 len ceil32(mem[_8288])]
                        if ceil32(_8384) > _8384:
                            mem[_8384 + _8146 + 196] = 0
                        call address(_8114) with:
                             gas gas_remaining wei
                            args mem[_8146 + 200 len _8384 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8146 + 196] = msg.sender
                            mem[_8146 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8146 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8146 + ceil32(return_data.size) + 197
                            mem[_8146 + 196] = return_data.size
                            mem[_8146 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8146 + 228] == bool(mem[_8146 + 228])
                                if not mem[_8146 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8146 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8146 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                else:
                    if not arg3:
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        mem[32] = 3
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = arg3
                        emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                        mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                        if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        stor8 = 1
                        mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    else:
                        require ext_code.size(mAddress)
                        staticcall mAddress.0x23717fe5 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8115 = mem[_8083]
                        require mem[_8083] == mem[_8083 + 12 len 20]
                        _8147 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _8290 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_8147 + 132] = 32
                        mem[_8147 + 164] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_8115)):
                            revert with 0, 'Address: call to non-contract'
                        _8386 = mem[_8290]
                        mem[_8147 + 196 len ceil32(mem[_8290])] = mem[_8290 + 32 len ceil32(mem[_8290])]
                        if ceil32(_8386) > _8386:
                            mem[_8386 + _8147 + 196] = 0
                        call address(_8115) with:
                             gas gas_remaining wei
                            args mem[_8147 + 200 len _8386 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8147 + 196] = msg.sender
                            mem[_8147 + 228] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
                            mem[_8147 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            mem[64] = _8147 + ceil32(return_data.size) + 197
                            mem[_8147 + 196] = return_data.size
                            mem[_8147 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_8147 + 228] == bool(mem[_8147 + 228])
                                if not mem[_8147 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            mem[32] = 3
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            mem[_8147 + ceil32(return_data.size) + 197] = msg.sender
                            mem[_8147 + ceil32(return_data.size) + 229] = arg3
                            emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                            mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                            if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                revert with 0, 'SafeMath#sub: UNDERFLOW'
                            stor8 = 1
    return (uint256(sub_176b8aab[mem[0]].field_0) - 1)
}



}
