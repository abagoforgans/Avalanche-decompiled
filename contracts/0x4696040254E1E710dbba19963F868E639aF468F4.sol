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
uint32 stor8;
address feeAddress;
uint256 stor8;
address genesisAddress;
uint8 stor10; offset 160
address wrapperAddress;
uint256 stor11;

function sub_176b8aab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_176b8aab[address(arg1)].field_0)
}

function constructed() payable {
    return bool(stor10)
}

function feeAddress() payable {
    return address(feeAddress)
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

function genesis() payable {
    return genesisAddress
}

function wrapper() payable {
    return wrapperAddress
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

function sub_396aaac6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarketWrap#setup: Fee too large.'
    fee = arg1
    address(feeAddress) = address(arg2)
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarketSwap: must not be constructed yet'
    stor10 = 1
    stor11 = 1
    fee = 200
    mAddress = arg1
    owner = msg.sender
    emit OwnershipTransferred(0, msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(msg.sender)] = 1
    emit WhitelistAdminAdded(msg.sender);
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

function sub_c4fd030e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor11 != 1:
        revert with 0, 'UniftyMarketSwap: LOCKED'
    stor11 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if genesisAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarketWrap#setGenesis: Genesis set already'
    genesisAddress = address(arg1)
    wrapperAddress = address(arg2)
    stor11 = 1
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

function withdrawFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11 != 1:
        revert with 0, 'UniftyMarketSwap: LOCKED'
    stor11 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not controllerFunds[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarketSwap#withdrawFee: Insufficient funds.'
    require ext_code.size(genesisAddress)
    staticcall genesisAddress.nifAddress() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    controllerFunds[ext_call.return_data[12 len 20]] = 0
    mem[ceil32(return_data.size) + 100] = owner
    mem[ceil32(return_data.size) + 132] = wrapperAddress
    require ext_code.size(genesisAddress)
    staticcall genesisAddress.0xcd196c6 with:
            gas gas_remaining wei
           args owner, wrapperAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 3:
        mem[(2 * ceil32(return_data.size)) + 132] = address(feeAddress)
        mem[(2 * ceil32(return_data.size)) + 164] = controllerFunds[address(arg1)]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), controllerFunds[address(arg1)], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), controllerFunds[address(arg1)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), controllerFunds[address(arg1)], 0) << 288)
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
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = owner
        mem[(2 * ceil32(return_data.size)) + 132] = wrapperAddress
        require ext_code.size(genesisAddress)
        staticcall genesisAddress.0xe4594cd5 with:
                gas gas_remaining wei
               args owner, wrapperAddress
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 132] = address(feeAddress)
            mem[(4 * ceil32(return_data.size)) + 164] = controllerFunds[address(arg1)]
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), controllerFunds[address(arg1)], 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), controllerFunds[address(arg1)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), controllerFunds[address(arg1)], 0) << 288)
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
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if not controllerFunds[address(arg1)]:
                mem[(4 * ceil32(return_data.size)) + 132] = address(feeAddress)
                mem[(4 * ceil32(return_data.size)) + 164] = 0
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 0, 0) << 288)
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
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.0x41275358 with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.nifAddress() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(7 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 328] = 0
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), 0, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(ext_call.return_data[0]), 0, 0) << 288)
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
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.0x41275358 with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.nifAddress() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), 0, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(ext_call.return_data[0]), 0, 0) << 288)
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
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if 10^18 * controllerFunds[address(arg1)] / controllerFunds[address(arg1)] != 10^18:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                mem[(4 * ceil32(return_data.size)) + 132] = address(feeAddress)
                mem[(4 * ceil32(return_data.size)) + 164] = 10^18 * controllerFunds[address(arg1)] / 2 / 10^18
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor8)
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) << 288)
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
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.0x41275358 with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.nifAddress() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(7 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 328] = 10^18 * controllerFunds[address(arg1)] / 2 / 10^18
                    mem[(7 * ceil32(return_data.size)) + 260] = 68
                    mem[(7 * ceil32(return_data.size)) + 292 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(7 * ceil32(return_data.size)) + 360] = 32
                    mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0
                    mem[(7 * ceil32(return_data.size)) + 492] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(ext_call.return_data[0]), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) << 288)
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
                        mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                            if not mem[(7 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.0x41275358 with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(genesisAddress)
                    staticcall genesisAddress.nifAddress() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 10^18 * controllerFunds[address(arg1)] / 2 / 10^18
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(ext_call.return_data[0]), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) << 288)
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
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    stor11 = 1
}

function sub_e55c88f9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor11 != 1:
        revert with 0, 'UniftyMarketSwap: LOCKED'
    stor11 = 0
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
    mem[_98] = mem[_7 + mem[_7 + 576] + 480]
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
    mem[_146] = mem[_7 + mem[_7 + 640] + 480]
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
    mem[_195] = mem[_7 + mem[_7 + 832] + 480]
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
    _435 = mem[_238 + _239 + 96]
    require mem[_238 + _239 + 96] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 96] + 31 < _238 + return_data.size
    _437 = mem[_238 + _239 + mem[_238 + _239 + 96]]
    require mem[_238 + _239 + mem[_238 + _239 + 96]] <= test266151307()
    _438 = mem[64]
    require mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 96]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 96]]) + 32
    mem[_438] = _437
    require _239 + _435 + (32 * _437) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _435 + 32
    t = _438 + 32
    while idx < _437:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 96] = _438
    require mem[_238 + _239 + 128] == mem[_238 + _239 + 140 len 20]
    mem[_238 + ceil32(return_data.size) + 128] = mem[_238 + _239 + 128]
    _602 = mem[_238 + _239 + 160]
    require mem[_238 + _239 + 160] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 160] + 31 < _238 + return_data.size
    _603 = mem[_238 + _239 + mem[_238 + _239 + 160]]
    require mem[_238 + _239 + mem[_238 + _239 + 160]] <= test266151307()
    _604 = mem[64]
    require mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 160]]) + 32 >= mem[64] and mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 160]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 160]]) + 32
    mem[_604] = _603
    require _239 + _602 + (32 * _603) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _602 + 32
    t = _604 + 32
    while idx < _603:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 160] = _604
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
    _775 = mem[_238 + _239 + 352]
    require mem[_238 + _239 + 352] <= test266151307()
    require _238 + _239 + mem[_238 + _239 + 352] + 31 < _238 + return_data.size
    _776 = mem[_238 + _239 + mem[_238 + _239 + 352]]
    require mem[_238 + _239 + mem[_238 + _239 + 352]] <= test266151307()
    _777 = mem[64]
    require mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 352]]) + 32 >= mem[64] and mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 352]]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_238 + _239 + mem[_238 + _239 + 352]]) + 32
    mem[_777] = _776
    require _239 + _775 + (32 * _776) + 32 <= return_data.size
    idx = 0
    s = _238 + _239 + _775 + 32
    t = _777 + 32
    while idx < _776:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_238 + ceil32(return_data.size) + 352] = _777
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
    _1161 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1161] == bool(mem[_1161])
    if not mem[_1161]:
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
    _1175 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1175] == bool(mem[_1175])
    if not mem[_1175]:
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
        _1202 = sha3(mem[0], 5)
        mem[0] = msg.sender
        mem[32] = _1202
        _1204 = mem[64]
        mem[mem[64] + 32] = arg1
        _1237 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _1242 = mem[_1237]
        mem[_1204 + 64 len ceil32(mem[_1237])] = mem[_1237 + 32 len ceil32(mem[_1237])]
        mem[_1242 + _1204 + 64] = sha3(msg.sender, _1202)
        if uint8(stor[sha3(mem[mem[64] len _1242 + _1204 + -mem[64] + 96])].field_0):
            revert with 0, 'UniftyMarketSwap#requestSwap: Swap request exists already.'
        if ceil32(_1242) <= _1242:
            if not arg3:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2436 = mem[_2428]
                require mem[_2428] == mem[_2428]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2460] == bool(mem[_2460])
                if mem[_2460]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2477 = sha3(mem[0], 3)
                    _2478 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2478] = arg1
                    mem[_2478 + 32] = arg2
                    mem[_2478 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2478 + 96] = msg.sender
                    mem[_2478 + 128] = arg3
                    mem[_2478 + 160] = 0
                    mem[_2478 + 192] = 0
                    uint256(stor[_2477].field_0)++
                    uint256(stor[(6 * uint256(stor[_2477].field_0)) + sha3(_2477)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2477].field_0)) + sha3(_2477) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2477].field_0)) + sha3(_2477) + 2].field_0) = mem[_2478 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2477].field_0)) + sha3(_2477) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2477].field_0)) + sha3(_2477) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2477].field_0)) + sha3(_2477) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2477].field_0)) + sha3(_2477) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2489] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2489 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2489 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2489 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2624 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2624
                    _2626 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2900 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2928 = mem[_2900]
                    mem[_2626 + 64 len ceil32(mem[_2900])] = mem[_2900 + 32 len ceil32(mem[_2900])]
                    mem[_2928 + _2626 + 64] = sha3(msg.sender, _2624)
                    uint8(stor[sha3(mem[mem[64] len _2928 + _2626 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2928) <= _2928:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8845 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8940 = mem[_8845]
                            require mem[_8845] == mem[_8845 + 12 len 20]
                            _9004 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9260 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9004 + 132] = 32
                            mem[_9004 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8940)):
                                revert with 0, 'Address: call to non-contract'
                            _9452 = mem[_9260]
                            mem[_9004 + 196 len ceil32(mem[_9260])] = mem[_9260 + 32 len ceil32(mem[_9260])]
                            if ceil32(_9452) > _9452:
                                mem[_9452 + _9004 + 196] = 0
                            call address(_8940) with:
                                 gas gas_remaining wei
                                args mem[_9004 + 200 len _9452 - 4]
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
                                mem[_9004 + 196] = msg.sender
                                mem[_9004 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9004 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9004 + ceil32(return_data.size) + 197
                                mem[_9004 + 196] = return_data.size
                                mem[_9004 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9004 + 228] == bool(mem[_9004 + 228])
                                    if not mem[_9004 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9004 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9004 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8847 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8941 = mem[_8847]
                            require mem[_8847] == mem[_8847 + 12 len 20]
                            _9005 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9262 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9005 + 132] = 32
                            mem[_9005 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8941)):
                                revert with 0, 'Address: call to non-contract'
                            _9454 = mem[_9262]
                            mem[_9005 + 196 len ceil32(mem[_9262])] = mem[_9262 + 32 len ceil32(mem[_9262])]
                            if ceil32(_9454) > _9454:
                                mem[_9454 + _9005 + 196] = 0
                            call address(_8941) with:
                                 gas gas_remaining wei
                                args mem[_9005 + 200 len _9454 - 4]
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
                                mem[_9005 + 196] = msg.sender
                                mem[_9005 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9005 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9005 + ceil32(return_data.size) + 197
                                mem[_9005 + 196] = return_data.size
                                mem[_9005 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9005 + 228] == bool(mem[_9005 + 228])
                                    if not mem[_9005 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9005 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9005 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2436 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2436 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2628 = sha3(mem[0], 3)
                    _2629 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2629] = arg1
                    mem[_2629 + 32] = arg2
                    mem[_2629 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2629 + 96] = msg.sender
                    mem[_2629 + 128] = arg3
                    mem[_2629 + 160] = 0
                    mem[_2629 + 192] = 0
                    uint256(stor[_2628].field_0)++
                    uint256(stor[(6 * uint256(stor[_2628].field_0)) + sha3(_2628)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2628].field_0)) + sha3(_2628) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2628].field_0)) + sha3(_2628) + 2].field_0) = mem[_2629 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2628].field_0)) + sha3(_2628) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2628].field_0)) + sha3(_2628) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2628].field_0)) + sha3(_2628) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2628].field_0)) + sha3(_2628) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2640] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2640 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2640 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2640 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2836 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2836
                    _2838 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2929 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2948 = mem[_2929]
                    mem[_2838 + 64 len ceil32(mem[_2929])] = mem[_2929 + 32 len ceil32(mem[_2929])]
                    mem[_2948 + _2838 + 64] = sha3(msg.sender, _2836)
                    uint8(stor[sha3(mem[mem[64] len _2948 + _2838 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2948) <= _2948:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8942 = mem[_8849]
                            require mem[_8849] == mem[_8849 + 12 len 20]
                            _9006 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9264 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9006 + 132] = 32
                            mem[_9006 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8942)):
                                revert with 0, 'Address: call to non-contract'
                            _9456 = mem[_9264]
                            mem[_9006 + 196 len ceil32(mem[_9264])] = mem[_9264 + 32 len ceil32(mem[_9264])]
                            if ceil32(_9456) > _9456:
                                mem[_9456 + _9006 + 196] = 0
                            call address(_8942) with:
                                 gas gas_remaining wei
                                args mem[_9006 + 200 len _9456 - 4]
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
                                mem[_9006 + 196] = msg.sender
                                mem[_9006 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9006 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9006 + ceil32(return_data.size) + 197
                                mem[_9006 + 196] = return_data.size
                                mem[_9006 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9006 + 228] == bool(mem[_9006 + 228])
                                    if not mem[_9006 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9006 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9006 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8851 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8943 = mem[_8851]
                            require mem[_8851] == mem[_8851 + 12 len 20]
                            _9007 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9266 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9007 + 132] = 32
                            mem[_9007 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8943)):
                                revert with 0, 'Address: call to non-contract'
                            _9458 = mem[_9266]
                            mem[_9007 + 196 len ceil32(mem[_9266])] = mem[_9266 + 32 len ceil32(mem[_9266])]
                            if ceil32(_9458) > _9458:
                                mem[_9458 + _9007 + 196] = 0
                            call address(_8943) with:
                                 gas gas_remaining wei
                                args mem[_9007 + 200 len _9458 - 4]
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
                                mem[_9007 + 196] = msg.sender
                                mem[_9007 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9007 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9007 + ceil32(return_data.size) + 197
                                mem[_9007 + 196] = return_data.size
                                mem[_9007 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9007 + 228] == bool(mem[_9007 + 228])
                                    if not mem[_9007 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9007 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9007 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2440 = mem[_2432]
                require mem[_2432] == mem[_2432]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2464] == bool(mem[_2464])
                if mem[_2464]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2545 = sha3(mem[0], 3)
                    _2546 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2546] = arg1
                    mem[_2546 + 32] = arg2
                    mem[_2546 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2546 + 96] = msg.sender
                    mem[_2546 + 128] = arg3
                    mem[_2546 + 160] = 0
                    mem[_2546 + 192] = 0
                    uint256(stor[_2545].field_0)++
                    uint256(stor[(6 * uint256(stor[_2545].field_0)) + sha3(_2545)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2545].field_0)) + sha3(_2545) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2545].field_0)) + sha3(_2545) + 2].field_0) = mem[_2546 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2545].field_0)) + sha3(_2545) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2545].field_0)) + sha3(_2545) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2545].field_0)) + sha3(_2545) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2545].field_0)) + sha3(_2545) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2557 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2557] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2557 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2557 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2557 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2732 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2732
                    _2734 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2916 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2940 = mem[_2916]
                    mem[_2734 + 64 len ceil32(mem[_2916])] = mem[_2916 + 32 len ceil32(mem[_2916])]
                    mem[_2940 + _2734 + 64] = sha3(msg.sender, _2732)
                    uint8(stor[sha3(mem[mem[64] len _2940 + _2734 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2940) <= _2940:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8944 = mem[_8853]
                            require mem[_8853] == mem[_8853 + 12 len 20]
                            _9008 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9268 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9008 + 132] = 32
                            mem[_9008 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8944)):
                                revert with 0, 'Address: call to non-contract'
                            _9460 = mem[_9268]
                            mem[_9008 + 196 len ceil32(mem[_9268])] = mem[_9268 + 32 len ceil32(mem[_9268])]
                            if ceil32(_9460) > _9460:
                                mem[_9460 + _9008 + 196] = 0
                            call address(_8944) with:
                                 gas gas_remaining wei
                                args mem[_9008 + 200 len _9460 - 4]
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
                                mem[_9008 + 196] = msg.sender
                                mem[_9008 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9008 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9008 + ceil32(return_data.size) + 197
                                mem[_9008 + 196] = return_data.size
                                mem[_9008 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9008 + 228] == bool(mem[_9008 + 228])
                                    if not mem[_9008 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9008 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9008 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8945 = mem[_8855]
                            require mem[_8855] == mem[_8855 + 12 len 20]
                            _9009 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9270 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9009 + 132] = 32
                            mem[_9009 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8945)):
                                revert with 0, 'Address: call to non-contract'
                            _9462 = mem[_9270]
                            mem[_9009 + 196 len ceil32(mem[_9270])] = mem[_9270 + 32 len ceil32(mem[_9270])]
                            if ceil32(_9462) > _9462:
                                mem[_9462 + _9009 + 196] = 0
                            call address(_8945) with:
                                 gas gas_remaining wei
                                args mem[_9009 + 200 len _9462 - 4]
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
                                mem[_9009 + 196] = msg.sender
                                mem[_9009 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9009 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9009 + ceil32(return_data.size) + 197
                                mem[_9009 + 196] = return_data.size
                                mem[_9009 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9009 + 228] == bool(mem[_9009 + 228])
                                    if not mem[_9009 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9009 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9009 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2440 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2440 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2736 = sha3(mem[0], 3)
                    _2737 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2737] = arg1
                    mem[_2737 + 32] = arg2
                    mem[_2737 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2737 + 96] = msg.sender
                    mem[_2737 + 128] = arg3
                    mem[_2737 + 160] = 0
                    mem[_2737 + 192] = 0
                    uint256(stor[_2736].field_0)++
                    uint256(stor[(6 * uint256(stor[_2736].field_0)) + sha3(_2736)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2736].field_0)) + sha3(_2736) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2736].field_0)) + sha3(_2736) + 2].field_0) = mem[_2737 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2736].field_0)) + sha3(_2736) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2736].field_0)) + sha3(_2736) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2736].field_0)) + sha3(_2736) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2736].field_0)) + sha3(_2736) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2748] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2748 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2748 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2748 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2868 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2868
                    _2870 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2941 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2952 = mem[_2941]
                    mem[_2870 + 64 len ceil32(mem[_2941])] = mem[_2941 + 32 len ceil32(mem[_2941])]
                    mem[_2952 + _2870 + 64] = sha3(msg.sender, _2868)
                    uint8(stor[sha3(mem[mem[64] len _2952 + _2870 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2952) <= _2952:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8857 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8946 = mem[_8857]
                            require mem[_8857] == mem[_8857 + 12 len 20]
                            _9010 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9272 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9010 + 132] = 32
                            mem[_9010 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8946)):
                                revert with 0, 'Address: call to non-contract'
                            _9464 = mem[_9272]
                            mem[_9010 + 196 len ceil32(mem[_9272])] = mem[_9272 + 32 len ceil32(mem[_9272])]
                            if ceil32(_9464) > _9464:
                                mem[_9464 + _9010 + 196] = 0
                            call address(_8946) with:
                                 gas gas_remaining wei
                                args mem[_9010 + 200 len _9464 - 4]
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
                                mem[_9010 + 196] = msg.sender
                                mem[_9010 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9010 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9010 + ceil32(return_data.size) + 197
                                mem[_9010 + 196] = return_data.size
                                mem[_9010 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9010 + 228] == bool(mem[_9010 + 228])
                                    if not mem[_9010 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9010 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9010 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8947 = mem[_8859]
                            require mem[_8859] == mem[_8859 + 12 len 20]
                            _9011 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9274 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9011 + 132] = 32
                            mem[_9011 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8947)):
                                revert with 0, 'Address: call to non-contract'
                            _9466 = mem[_9274]
                            mem[_9011 + 196 len ceil32(mem[_9274])] = mem[_9274 + 32 len ceil32(mem[_9274])]
                            if ceil32(_9466) > _9466:
                                mem[_9466 + _9011 + 196] = 0
                            call address(_8947) with:
                                 gas gas_remaining wei
                                args mem[_9011 + 200 len _9466 - 4]
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
                                mem[_9011 + 196] = msg.sender
                                mem[_9011 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9011 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9011 + ceil32(return_data.size) + 197
                                mem[_9011 + 196] = return_data.size
                                mem[_9011 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9011 + 228] == bool(mem[_9011 + 228])
                                    if not mem[_9011 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9011 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9011 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
        else:
            if not arg3:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2429 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2437 = mem[_2429]
                require mem[_2429] == mem[_2429]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2461] == bool(mem[_2461])
                if mem[_2461]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2494 = sha3(mem[0], 3)
                    _2495 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2495] = arg1
                    mem[_2495 + 32] = arg2
                    mem[_2495 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2495 + 96] = msg.sender
                    mem[_2495 + 128] = arg3
                    mem[_2495 + 160] = 0
                    mem[_2495 + 192] = 0
                    uint256(stor[_2494].field_0)++
                    uint256(stor[(6 * uint256(stor[_2494].field_0)) + sha3(_2494)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2494].field_0)) + sha3(_2494) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2494].field_0)) + sha3(_2494) + 2].field_0) = mem[_2495 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2494].field_0)) + sha3(_2494) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2494].field_0)) + sha3(_2494) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2494].field_0)) + sha3(_2494) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2494].field_0)) + sha3(_2494) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2506] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2506 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2506 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2506 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2651 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2651
                    _2653 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2904 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2931 = mem[_2904]
                    mem[_2653 + 64 len ceil32(mem[_2904])] = mem[_2904 + 32 len ceil32(mem[_2904])]
                    mem[_2931 + _2653 + 64] = sha3(msg.sender, _2651)
                    uint8(stor[sha3(mem[mem[64] len _2931 + _2653 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2931) <= _2931:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8861 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8948 = mem[_8861]
                            require mem[_8861] == mem[_8861 + 12 len 20]
                            _9012 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9276 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9012 + 132] = 32
                            mem[_9012 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8948)):
                                revert with 0, 'Address: call to non-contract'
                            _9468 = mem[_9276]
                            mem[_9012 + 196 len ceil32(mem[_9276])] = mem[_9276 + 32 len ceil32(mem[_9276])]
                            if ceil32(_9468) > _9468:
                                mem[_9468 + _9012 + 196] = 0
                            call address(_8948) with:
                                 gas gas_remaining wei
                                args mem[_9012 + 200 len _9468 - 4]
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
                                mem[_9012 + 196] = msg.sender
                                mem[_9012 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9012 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9012 + ceil32(return_data.size) + 197
                                mem[_9012 + 196] = return_data.size
                                mem[_9012 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9012 + 228] == bool(mem[_9012 + 228])
                                    if not mem[_9012 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9012 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9012 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8863 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8949 = mem[_8863]
                            require mem[_8863] == mem[_8863 + 12 len 20]
                            _9013 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9278 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9013 + 132] = 32
                            mem[_9013 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8949)):
                                revert with 0, 'Address: call to non-contract'
                            _9470 = mem[_9278]
                            mem[_9013 + 196 len ceil32(mem[_9278])] = mem[_9278 + 32 len ceil32(mem[_9278])]
                            if ceil32(_9470) > _9470:
                                mem[_9470 + _9013 + 196] = 0
                            call address(_8949) with:
                                 gas gas_remaining wei
                                args mem[_9013 + 200 len _9470 - 4]
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
                                mem[_9013 + 196] = msg.sender
                                mem[_9013 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9013 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9013 + ceil32(return_data.size) + 197
                                mem[_9013 + 196] = return_data.size
                                mem[_9013 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9013 + 228] == bool(mem[_9013 + 228])
                                    if not mem[_9013 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9013 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9013 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2437 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2437 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2655 = sha3(mem[0], 3)
                    _2656 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2656] = arg1
                    mem[_2656 + 32] = arg2
                    mem[_2656 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2656 + 96] = msg.sender
                    mem[_2656 + 128] = arg3
                    mem[_2656 + 160] = 0
                    mem[_2656 + 192] = 0
                    uint256(stor[_2655].field_0)++
                    uint256(stor[(6 * uint256(stor[_2655].field_0)) + sha3(_2655)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2655].field_0)) + sha3(_2655) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2655].field_0)) + sha3(_2655) + 2].field_0) = mem[_2656 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2655].field_0)) + sha3(_2655) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2655].field_0)) + sha3(_2655) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2655].field_0)) + sha3(_2655) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2655].field_0)) + sha3(_2655) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2667] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2667 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2667 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2667 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2844 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2844
                    _2846 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2932 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2949 = mem[_2932]
                    mem[_2846 + 64 len ceil32(mem[_2932])] = mem[_2932 + 32 len ceil32(mem[_2932])]
                    mem[_2949 + _2846 + 64] = sha3(msg.sender, _2844)
                    uint8(stor[sha3(mem[mem[64] len _2949 + _2846 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2949) <= _2949:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8865 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8950 = mem[_8865]
                            require mem[_8865] == mem[_8865 + 12 len 20]
                            _9014 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9280 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9014 + 132] = 32
                            mem[_9014 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8950)):
                                revert with 0, 'Address: call to non-contract'
                            _9472 = mem[_9280]
                            mem[_9014 + 196 len ceil32(mem[_9280])] = mem[_9280 + 32 len ceil32(mem[_9280])]
                            if ceil32(_9472) > _9472:
                                mem[_9472 + _9014 + 196] = 0
                            call address(_8950) with:
                                 gas gas_remaining wei
                                args mem[_9014 + 200 len _9472 - 4]
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
                                mem[_9014 + 196] = msg.sender
                                mem[_9014 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9014 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9014 + ceil32(return_data.size) + 197
                                mem[_9014 + 196] = return_data.size
                                mem[_9014 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9014 + 228] == bool(mem[_9014 + 228])
                                    if not mem[_9014 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9014 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9014 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8867 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8951 = mem[_8867]
                            require mem[_8867] == mem[_8867 + 12 len 20]
                            _9015 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9282 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9015 + 132] = 32
                            mem[_9015 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8951)):
                                revert with 0, 'Address: call to non-contract'
                            _9474 = mem[_9282]
                            mem[_9015 + 196 len ceil32(mem[_9282])] = mem[_9282 + 32 len ceil32(mem[_9282])]
                            if ceil32(_9474) > _9474:
                                mem[_9474 + _9015 + 196] = 0
                            call address(_8951) with:
                                 gas gas_remaining wei
                                args mem[_9015 + 200 len _9474 - 4]
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
                                mem[_9015 + 196] = msg.sender
                                mem[_9015 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9015 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9015 + ceil32(return_data.size) + 197
                                mem[_9015 + 196] = return_data.size
                                mem[_9015 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9015 + 228] == bool(mem[_9015 + 228])
                                    if not mem[_9015 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9015 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9015 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2441 = mem[_2433]
                require mem[_2433] == mem[_2433]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2465] == bool(mem[_2465])
                if mem[_2465]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2562 = sha3(mem[0], 3)
                    _2563 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2563] = arg1
                    mem[_2563 + 32] = arg2
                    mem[_2563 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2563 + 96] = msg.sender
                    mem[_2563 + 128] = arg3
                    mem[_2563 + 160] = 0
                    mem[_2563 + 192] = 0
                    uint256(stor[_2562].field_0)++
                    uint256(stor[(6 * uint256(stor[_2562].field_0)) + sha3(_2562)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2562].field_0)) + sha3(_2562) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2562].field_0)) + sha3(_2562) + 2].field_0) = mem[_2563 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2562].field_0)) + sha3(_2562) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2562].field_0)) + sha3(_2562) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2562].field_0)) + sha3(_2562) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2562].field_0)) + sha3(_2562) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2574 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2574] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2574 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2574 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2574 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2757 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2757
                    _2759 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2918 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2942 = mem[_2918]
                    mem[_2759 + 64 len ceil32(mem[_2918])] = mem[_2918 + 32 len ceil32(mem[_2918])]
                    mem[_2942 + _2759 + 64] = sha3(msg.sender, _2757)
                    uint8(stor[sha3(mem[mem[64] len _2942 + _2759 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2942) <= _2942:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8869 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8952 = mem[_8869]
                            require mem[_8869] == mem[_8869 + 12 len 20]
                            _9016 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9284 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9016 + 132] = 32
                            mem[_9016 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8952)):
                                revert with 0, 'Address: call to non-contract'
                            _9476 = mem[_9284]
                            mem[_9016 + 196 len ceil32(mem[_9284])] = mem[_9284 + 32 len ceil32(mem[_9284])]
                            if ceil32(_9476) > _9476:
                                mem[_9476 + _9016 + 196] = 0
                            call address(_8952) with:
                                 gas gas_remaining wei
                                args mem[_9016 + 200 len _9476 - 4]
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
                                mem[_9016 + 196] = msg.sender
                                mem[_9016 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9016 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9016 + ceil32(return_data.size) + 197
                                mem[_9016 + 196] = return_data.size
                                mem[_9016 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9016 + 228] == bool(mem[_9016 + 228])
                                    if not mem[_9016 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9016 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9016 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8871 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8953 = mem[_8871]
                            require mem[_8871] == mem[_8871 + 12 len 20]
                            _9017 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9286 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9017 + 132] = 32
                            mem[_9017 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8953)):
                                revert with 0, 'Address: call to non-contract'
                            _9478 = mem[_9286]
                            mem[_9017 + 196 len ceil32(mem[_9286])] = mem[_9286 + 32 len ceil32(mem[_9286])]
                            if ceil32(_9478) > _9478:
                                mem[_9478 + _9017 + 196] = 0
                            call address(_8953) with:
                                 gas gas_remaining wei
                                args mem[_9017 + 200 len _9478 - 4]
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
                                mem[_9017 + 196] = msg.sender
                                mem[_9017 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9017 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9017 + ceil32(return_data.size) + 197
                                mem[_9017 + 196] = return_data.size
                                mem[_9017 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9017 + 228] == bool(mem[_9017 + 228])
                                    if not mem[_9017 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9017 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9017 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2441 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2441 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2761 = sha3(mem[0], 3)
                    _2762 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2762] = arg1
                    mem[_2762 + 32] = arg2
                    mem[_2762 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2762 + 96] = msg.sender
                    mem[_2762 + 128] = arg3
                    mem[_2762 + 160] = 0
                    mem[_2762 + 192] = 0
                    uint256(stor[_2761].field_0)++
                    uint256(stor[(6 * uint256(stor[_2761].field_0)) + sha3(_2761)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2761].field_0)) + sha3(_2761) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2761].field_0)) + sha3(_2761) + 2].field_0) = mem[_2762 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2761].field_0)) + sha3(_2761) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2761].field_0)) + sha3(_2761) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2761].field_0)) + sha3(_2761) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2761].field_0)) + sha3(_2761) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2773] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2773 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2773 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2773 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2875 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2875
                    _2877 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2943 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2953 = mem[_2943]
                    mem[_2877 + 64 len ceil32(mem[_2943])] = mem[_2943 + 32 len ceil32(mem[_2943])]
                    mem[_2953 + _2877 + 64] = sha3(msg.sender, _2875)
                    uint8(stor[sha3(mem[mem[64] len _2953 + _2877 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2953) <= _2953:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8873 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8954 = mem[_8873]
                            require mem[_8873] == mem[_8873 + 12 len 20]
                            _9018 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9288 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9018 + 132] = 32
                            mem[_9018 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8954)):
                                revert with 0, 'Address: call to non-contract'
                            _9480 = mem[_9288]
                            mem[_9018 + 196 len ceil32(mem[_9288])] = mem[_9288 + 32 len ceil32(mem[_9288])]
                            if ceil32(_9480) > _9480:
                                mem[_9480 + _9018 + 196] = 0
                            call address(_8954) with:
                                 gas gas_remaining wei
                                args mem[_9018 + 200 len _9480 - 4]
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
                                mem[_9018 + 196] = msg.sender
                                mem[_9018 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9018 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9018 + ceil32(return_data.size) + 197
                                mem[_9018 + 196] = return_data.size
                                mem[_9018 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9018 + 228] == bool(mem[_9018 + 228])
                                    if not mem[_9018 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9018 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9018 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8875 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8955 = mem[_8875]
                            require mem[_8875] == mem[_8875 + 12 len 20]
                            _9019 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9290 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9019 + 132] = 32
                            mem[_9019 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8955)):
                                revert with 0, 'Address: call to non-contract'
                            _9482 = mem[_9290]
                            mem[_9019 + 196 len ceil32(mem[_9290])] = mem[_9290 + 32 len ceil32(mem[_9290])]
                            if ceil32(_9482) > _9482:
                                mem[_9482 + _9019 + 196] = 0
                            call address(_8955) with:
                                 gas gas_remaining wei
                                args mem[_9019 + 200 len _9482 - 4]
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
                                mem[_9019 + 196] = msg.sender
                                mem[_9019 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9019 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9019 + ceil32(return_data.size) + 197
                                mem[_9019 + 196] = return_data.size
                                mem[_9019 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9019 + 228] == bool(mem[_9019 + 228])
                                    if not mem[_9019 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9019 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9019 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
        _1213 = sha3(mem[0], 5)
        mem[0] = msg.sender
        mem[32] = _1213
        _1215 = mem[64]
        mem[mem[64] + 32] = arg1
        _1240 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _1243 = mem[_1240]
        mem[_1215 + 64 len ceil32(mem[_1240])] = mem[_1240 + 32 len ceil32(mem[_1240])]
        mem[_1243 + _1215 + 64] = sha3(msg.sender, _1213)
        if uint8(stor[sha3(mem[mem[64] len _1243 + _1215 + -mem[64] + 96])].field_0):
            revert with 0, 'UniftyMarketSwap#requestSwap: Swap request exists already.'
        if ceil32(_1243) <= _1243:
            if not arg3:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2438 = mem[_2430]
                require mem[_2430] == mem[_2430]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2462] == bool(mem[_2462])
                if mem[_2462]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2511 = sha3(mem[0], 3)
                    _2512 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2512] = arg1
                    mem[_2512 + 32] = arg2
                    mem[_2512 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2512 + 96] = msg.sender
                    mem[_2512 + 128] = arg3
                    mem[_2512 + 160] = 0
                    mem[_2512 + 192] = 0
                    uint256(stor[_2511].field_0)++
                    uint256(stor[(6 * uint256(stor[_2511].field_0)) + sha3(_2511)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2511].field_0)) + sha3(_2511) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2511].field_0)) + sha3(_2511) + 2].field_0) = mem[_2512 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2511].field_0)) + sha3(_2511) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2511].field_0)) + sha3(_2511) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2511].field_0)) + sha3(_2511) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2511].field_0)) + sha3(_2511) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2523] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2523 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2523 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2523 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2678 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2678
                    _2680 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2908 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2934 = mem[_2908]
                    mem[_2680 + 64 len ceil32(mem[_2908])] = mem[_2908 + 32 len ceil32(mem[_2908])]
                    mem[_2934 + _2680 + 64] = sha3(msg.sender, _2678)
                    uint8(stor[sha3(mem[mem[64] len _2934 + _2680 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2934) <= _2934:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8877 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8956 = mem[_8877]
                            require mem[_8877] == mem[_8877 + 12 len 20]
                            _9020 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9292 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9020 + 132] = 32
                            mem[_9020 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8956)):
                                revert with 0, 'Address: call to non-contract'
                            _9484 = mem[_9292]
                            mem[_9020 + 196 len ceil32(mem[_9292])] = mem[_9292 + 32 len ceil32(mem[_9292])]
                            if ceil32(_9484) > _9484:
                                mem[_9484 + _9020 + 196] = 0
                            call address(_8956) with:
                                 gas gas_remaining wei
                                args mem[_9020 + 200 len _9484 - 4]
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
                                mem[_9020 + 196] = msg.sender
                                mem[_9020 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9020 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9020 + ceil32(return_data.size) + 197
                                mem[_9020 + 196] = return_data.size
                                mem[_9020 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9020 + 228] == bool(mem[_9020 + 228])
                                    if not mem[_9020 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9020 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9020 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8957 = mem[_8879]
                            require mem[_8879] == mem[_8879 + 12 len 20]
                            _9021 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9294 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9021 + 132] = 32
                            mem[_9021 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8957)):
                                revert with 0, 'Address: call to non-contract'
                            _9486 = mem[_9294]
                            mem[_9021 + 196 len ceil32(mem[_9294])] = mem[_9294 + 32 len ceil32(mem[_9294])]
                            if ceil32(_9486) > _9486:
                                mem[_9486 + _9021 + 196] = 0
                            call address(_8957) with:
                                 gas gas_remaining wei
                                args mem[_9021 + 200 len _9486 - 4]
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
                                mem[_9021 + 196] = msg.sender
                                mem[_9021 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9021 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9021 + ceil32(return_data.size) + 197
                                mem[_9021 + 196] = return_data.size
                                mem[_9021 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9021 + 228] == bool(mem[_9021 + 228])
                                    if not mem[_9021 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9021 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9021 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2438 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2438 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2682 = sha3(mem[0], 3)
                    _2683 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2683] = arg1
                    mem[_2683 + 32] = arg2
                    mem[_2683 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2683 + 96] = msg.sender
                    mem[_2683 + 128] = arg3
                    mem[_2683 + 160] = 0
                    mem[_2683 + 192] = 0
                    uint256(stor[_2682].field_0)++
                    uint256(stor[(6 * uint256(stor[_2682].field_0)) + sha3(_2682)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2682].field_0)) + sha3(_2682) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2682].field_0)) + sha3(_2682) + 2].field_0) = mem[_2683 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2682].field_0)) + sha3(_2682) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2682].field_0)) + sha3(_2682) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2682].field_0)) + sha3(_2682) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2682].field_0)) + sha3(_2682) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2694] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2694 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2694 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2694 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2852 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2852
                    _2854 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2935 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2950 = mem[_2935]
                    mem[_2854 + 64 len ceil32(mem[_2935])] = mem[_2935 + 32 len ceil32(mem[_2935])]
                    mem[_2950 + _2854 + 64] = sha3(msg.sender, _2852)
                    uint8(stor[sha3(mem[mem[64] len _2950 + _2854 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2950) <= _2950:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8958 = mem[_8881]
                            require mem[_8881] == mem[_8881 + 12 len 20]
                            _9022 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9296 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9022 + 132] = 32
                            mem[_9022 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8958)):
                                revert with 0, 'Address: call to non-contract'
                            _9488 = mem[_9296]
                            mem[_9022 + 196 len ceil32(mem[_9296])] = mem[_9296 + 32 len ceil32(mem[_9296])]
                            if ceil32(_9488) > _9488:
                                mem[_9488 + _9022 + 196] = 0
                            call address(_8958) with:
                                 gas gas_remaining wei
                                args mem[_9022 + 200 len _9488 - 4]
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
                                mem[_9022 + 196] = msg.sender
                                mem[_9022 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9022 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9022 + ceil32(return_data.size) + 197
                                mem[_9022 + 196] = return_data.size
                                mem[_9022 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9022 + 228] == bool(mem[_9022 + 228])
                                    if not mem[_9022 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9022 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9022 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8883 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8959 = mem[_8883]
                            require mem[_8883] == mem[_8883 + 12 len 20]
                            _9023 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9298 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9023 + 132] = 32
                            mem[_9023 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8959)):
                                revert with 0, 'Address: call to non-contract'
                            _9490 = mem[_9298]
                            mem[_9023 + 196 len ceil32(mem[_9298])] = mem[_9298 + 32 len ceil32(mem[_9298])]
                            if ceil32(_9490) > _9490:
                                mem[_9490 + _9023 + 196] = 0
                            call address(_8959) with:
                                 gas gas_remaining wei
                                args mem[_9023 + 200 len _9490 - 4]
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
                                mem[_9023 + 196] = msg.sender
                                mem[_9023 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9023 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9023 + ceil32(return_data.size) + 197
                                mem[_9023 + 196] = return_data.size
                                mem[_9023 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9023 + 228] == bool(mem[_9023 + 228])
                                    if not mem[_9023 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9023 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9023 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2442 = mem[_2434]
                require mem[_2434] == mem[_2434]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2466] == bool(mem[_2466])
                if mem[_2466]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2579 = sha3(mem[0], 3)
                    _2580 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2580] = arg1
                    mem[_2580 + 32] = arg2
                    mem[_2580 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2580 + 96] = msg.sender
                    mem[_2580 + 128] = arg3
                    mem[_2580 + 160] = 0
                    mem[_2580 + 192] = 0
                    uint256(stor[_2579].field_0)++
                    uint256(stor[(6 * uint256(stor[_2579].field_0)) + sha3(_2579)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2579].field_0)) + sha3(_2579) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2579].field_0)) + sha3(_2579) + 2].field_0) = mem[_2580 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2579].field_0)) + sha3(_2579) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2579].field_0)) + sha3(_2579) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2579].field_0)) + sha3(_2579) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2579].field_0)) + sha3(_2579) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2591] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2591 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2591 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2591 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2782 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2782
                    _2784 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2920 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2944 = mem[_2920]
                    mem[_2784 + 64 len ceil32(mem[_2920])] = mem[_2920 + 32 len ceil32(mem[_2920])]
                    mem[_2944 + _2784 + 64] = sha3(msg.sender, _2782)
                    uint8(stor[sha3(mem[mem[64] len _2944 + _2784 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2944) <= _2944:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8885 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8960 = mem[_8885]
                            require mem[_8885] == mem[_8885 + 12 len 20]
                            _9024 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9300 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9024 + 132] = 32
                            mem[_9024 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8960)):
                                revert with 0, 'Address: call to non-contract'
                            _9492 = mem[_9300]
                            mem[_9024 + 196 len ceil32(mem[_9300])] = mem[_9300 + 32 len ceil32(mem[_9300])]
                            if ceil32(_9492) > _9492:
                                mem[_9492 + _9024 + 196] = 0
                            call address(_8960) with:
                                 gas gas_remaining wei
                                args mem[_9024 + 200 len _9492 - 4]
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
                                mem[_9024 + 196] = msg.sender
                                mem[_9024 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9024 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9024 + ceil32(return_data.size) + 197
                                mem[_9024 + 196] = return_data.size
                                mem[_9024 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9024 + 228] == bool(mem[_9024 + 228])
                                    if not mem[_9024 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9024 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9024 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8887 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8961 = mem[_8887]
                            require mem[_8887] == mem[_8887 + 12 len 20]
                            _9025 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9302 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9025 + 132] = 32
                            mem[_9025 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8961)):
                                revert with 0, 'Address: call to non-contract'
                            _9494 = mem[_9302]
                            mem[_9025 + 196 len ceil32(mem[_9302])] = mem[_9302 + 32 len ceil32(mem[_9302])]
                            if ceil32(_9494) > _9494:
                                mem[_9494 + _9025 + 196] = 0
                            call address(_8961) with:
                                 gas gas_remaining wei
                                args mem[_9025 + 200 len _9494 - 4]
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
                                mem[_9025 + 196] = msg.sender
                                mem[_9025 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9025 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9025 + ceil32(return_data.size) + 197
                                mem[_9025 + 196] = return_data.size
                                mem[_9025 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9025 + 228] == bool(mem[_9025 + 228])
                                    if not mem[_9025 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9025 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9025 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2442 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2442 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2786 = sha3(mem[0], 3)
                    _2787 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2787] = arg1
                    mem[_2787 + 32] = arg2
                    mem[_2787 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2787 + 96] = msg.sender
                    mem[_2787 + 128] = arg3
                    mem[_2787 + 160] = 0
                    mem[_2787 + 192] = 0
                    uint256(stor[_2786].field_0)++
                    uint256(stor[(6 * uint256(stor[_2786].field_0)) + sha3(_2786)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2786].field_0)) + sha3(_2786) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2786].field_0)) + sha3(_2786) + 2].field_0) = mem[_2787 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2786].field_0)) + sha3(_2786) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2786].field_0)) + sha3(_2786) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2786].field_0)) + sha3(_2786) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2786].field_0)) + sha3(_2786) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2798] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2798 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2798 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2798 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2882 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2882
                    _2884 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2945 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2954 = mem[_2945]
                    mem[_2884 + 64 len ceil32(mem[_2945])] = mem[_2945 + 32 len ceil32(mem[_2945])]
                    mem[_2954 + _2884 + 64] = sha3(msg.sender, _2882)
                    uint8(stor[sha3(mem[mem[64] len _2954 + _2884 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2954) <= _2954:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8889 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8962 = mem[_8889]
                            require mem[_8889] == mem[_8889 + 12 len 20]
                            _9026 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9304 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9026 + 132] = 32
                            mem[_9026 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8962)):
                                revert with 0, 'Address: call to non-contract'
                            _9496 = mem[_9304]
                            mem[_9026 + 196 len ceil32(mem[_9304])] = mem[_9304 + 32 len ceil32(mem[_9304])]
                            if ceil32(_9496) > _9496:
                                mem[_9496 + _9026 + 196] = 0
                            call address(_8962) with:
                                 gas gas_remaining wei
                                args mem[_9026 + 200 len _9496 - 4]
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
                                mem[_9026 + 196] = msg.sender
                                mem[_9026 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9026 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9026 + ceil32(return_data.size) + 197
                                mem[_9026 + 196] = return_data.size
                                mem[_9026 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9026 + 228] == bool(mem[_9026 + 228])
                                    if not mem[_9026 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9026 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9026 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8891 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8963 = mem[_8891]
                            require mem[_8891] == mem[_8891 + 12 len 20]
                            _9027 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9306 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9027 + 132] = 32
                            mem[_9027 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8963)):
                                revert with 0, 'Address: call to non-contract'
                            _9498 = mem[_9306]
                            mem[_9027 + 196 len ceil32(mem[_9306])] = mem[_9306 + 32 len ceil32(mem[_9306])]
                            if ceil32(_9498) > _9498:
                                mem[_9498 + _9027 + 196] = 0
                            call address(_8963) with:
                                 gas gas_remaining wei
                                args mem[_9027 + 200 len _9498 - 4]
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
                                mem[_9027 + 196] = msg.sender
                                mem[_9027 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9027 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9027 + ceil32(return_data.size) + 197
                                mem[_9027 + 196] = return_data.size
                                mem[_9027 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9027 + 228] == bool(mem[_9027 + 228])
                                    if not mem[_9027 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9027 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9027 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
        else:
            if not arg3:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2439 = mem[_2431]
                require mem[_2431] == mem[_2431]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2463] == bool(mem[_2463])
                if mem[_2463]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2528 = sha3(mem[0], 3)
                    _2529 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2529] = arg1
                    mem[_2529 + 32] = arg2
                    mem[_2529 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2529 + 96] = msg.sender
                    mem[_2529 + 128] = arg3
                    mem[_2529 + 160] = 0
                    mem[_2529 + 192] = 0
                    uint256(stor[_2528].field_0)++
                    uint256(stor[(6 * uint256(stor[_2528].field_0)) + sha3(_2528)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2528].field_0)) + sha3(_2528) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2528].field_0)) + sha3(_2528) + 2].field_0) = mem[_2529 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2528].field_0)) + sha3(_2528) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2528].field_0)) + sha3(_2528) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2528].field_0)) + sha3(_2528) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2528].field_0)) + sha3(_2528) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2540] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2540 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2540 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2540 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2705 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2705
                    _2707 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2912 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2937 = mem[_2912]
                    mem[_2707 + 64 len ceil32(mem[_2912])] = mem[_2912 + 32 len ceil32(mem[_2912])]
                    mem[_2937 + _2707 + 64] = sha3(msg.sender, _2705)
                    uint8(stor[sha3(mem[mem[64] len _2937 + _2707 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2937) <= _2937:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8893 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8964 = mem[_8893]
                            require mem[_8893] == mem[_8893 + 12 len 20]
                            _9028 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9308 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9028 + 132] = 32
                            mem[_9028 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8964)):
                                revert with 0, 'Address: call to non-contract'
                            _9500 = mem[_9308]
                            mem[_9028 + 196 len ceil32(mem[_9308])] = mem[_9308 + 32 len ceil32(mem[_9308])]
                            if ceil32(_9500) > _9500:
                                mem[_9500 + _9028 + 196] = 0
                            call address(_8964) with:
                                 gas gas_remaining wei
                                args mem[_9028 + 200 len _9500 - 4]
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
                                mem[_9028 + 196] = msg.sender
                                mem[_9028 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9028 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9028 + ceil32(return_data.size) + 197
                                mem[_9028 + 196] = return_data.size
                                mem[_9028 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9028 + 228] == bool(mem[_9028 + 228])
                                    if not mem[_9028 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9028 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9028 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8895 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8965 = mem[_8895]
                            require mem[_8895] == mem[_8895 + 12 len 20]
                            _9029 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9310 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9029 + 132] = 32
                            mem[_9029 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8965)):
                                revert with 0, 'Address: call to non-contract'
                            _9502 = mem[_9310]
                            mem[_9029 + 196 len ceil32(mem[_9310])] = mem[_9310 + 32 len ceil32(mem[_9310])]
                            if ceil32(_9502) > _9502:
                                mem[_9502 + _9029 + 196] = 0
                            call address(_8965) with:
                                 gas gas_remaining wei
                                args mem[_9029 + 200 len _9502 - 4]
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
                                mem[_9029 + 196] = msg.sender
                                mem[_9029 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9029 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9029 + ceil32(return_data.size) + 197
                                mem[_9029 + 196] = return_data.size
                                mem[_9029 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9029 + 228] == bool(mem[_9029 + 228])
                                    if not mem[_9029 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9029 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9029 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2439 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2439 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2709 = sha3(mem[0], 3)
                    _2710 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2710] = arg1
                    mem[_2710 + 32] = arg2
                    mem[_2710 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2710 + 96] = msg.sender
                    mem[_2710 + 128] = arg3
                    mem[_2710 + 160] = 0
                    mem[_2710 + 192] = 0
                    uint256(stor[_2709].field_0)++
                    uint256(stor[(6 * uint256(stor[_2709].field_0)) + sha3(_2709)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2709].field_0)) + sha3(_2709) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2709].field_0)) + sha3(_2709) + 2].field_0) = mem[_2710 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2709].field_0)) + sha3(_2709) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2709].field_0)) + sha3(_2709) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2709].field_0)) + sha3(_2709) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2709].field_0)) + sha3(_2709) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2721] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2721 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2721 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2721 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2860 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2860
                    _2862 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2938 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2951 = mem[_2938]
                    mem[_2862 + 64 len ceil32(mem[_2938])] = mem[_2938 + 32 len ceil32(mem[_2938])]
                    mem[_2951 + _2862 + 64] = sha3(msg.sender, _2860)
                    uint8(stor[sha3(mem[mem[64] len _2951 + _2862 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2951) <= _2951:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8897 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8966 = mem[_8897]
                            require mem[_8897] == mem[_8897 + 12 len 20]
                            _9030 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9312 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9030 + 132] = 32
                            mem[_9030 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8966)):
                                revert with 0, 'Address: call to non-contract'
                            _9504 = mem[_9312]
                            mem[_9030 + 196 len ceil32(mem[_9312])] = mem[_9312 + 32 len ceil32(mem[_9312])]
                            if ceil32(_9504) > _9504:
                                mem[_9504 + _9030 + 196] = 0
                            call address(_8966) with:
                                 gas gas_remaining wei
                                args mem[_9030 + 200 len _9504 - 4]
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
                                mem[_9030 + 196] = msg.sender
                                mem[_9030 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9030 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9030 + ceil32(return_data.size) + 197
                                mem[_9030 + 196] = return_data.size
                                mem[_9030 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9030 + 228] == bool(mem[_9030 + 228])
                                    if not mem[_9030 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9030 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9030 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8967 = mem[_8899]
                            require mem[_8899] == mem[_8899 + 12 len 20]
                            _9031 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9314 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9031 + 132] = 32
                            mem[_9031 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8967)):
                                revert with 0, 'Address: call to non-contract'
                            _9506 = mem[_9314]
                            mem[_9031 + 196 len ceil32(mem[_9314])] = mem[_9314 + 32 len ceil32(mem[_9314])]
                            if ceil32(_9506) > _9506:
                                mem[_9506 + _9031 + 196] = 0
                            call address(_8967) with:
                                 gas gas_remaining wei
                                args mem[_9031 + 200 len _9506 - 4]
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
                                mem[_9031 + 196] = msg.sender
                                mem[_9031 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9031 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9031 + ceil32(return_data.size) + 197
                                mem[_9031 + 196] = return_data.size
                                mem[_9031 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9031 + 228] == bool(mem[_9031 + 228])
                                    if not mem[_9031 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9031 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9031 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
            else:
                if arg3 < 1000:
                    revert with 0, 'UniftyMarketSwap#requestSwap: Too few NIF offered.'
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xcd196c6 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2435 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2443 = mem[_2435]
                require mem[_2435] == mem[_2435]
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = wrapperAddress
                require ext_code.size(genesisAddress)
                staticcall genesisAddress.0xe4594cd5 with:
                        gas gas_remaining wei
                       args owner, wrapperAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2467] == bool(mem[_2467])
                if mem[_2467]:
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2596 = sha3(mem[0], 3)
                    _2597 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2597] = arg1
                    mem[_2597 + 32] = arg2
                    mem[_2597 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2597 + 96] = msg.sender
                    mem[_2597 + 128] = arg3
                    mem[_2597 + 160] = 0
                    mem[_2597 + 192] = 0
                    uint256(stor[_2596].field_0)++
                    uint256(stor[(6 * uint256(stor[_2596].field_0)) + sha3(_2596)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2596].field_0)) + sha3(_2596) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2596].field_0)) + sha3(_2596) + 2].field_0) = mem[_2597 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2596].field_0)) + sha3(_2596) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2596].field_0)) + sha3(_2596) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2596].field_0)) + sha3(_2596) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2596].field_0)) + sha3(_2596) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2608 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2608] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2608 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2608 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2608 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2807 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2807
                    _2809 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2922 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2946 = mem[_2922]
                    mem[_2809 + 64 len ceil32(mem[_2922])] = mem[_2922 + 32 len ceil32(mem[_2922])]
                    mem[_2946 + _2809 + 64] = sha3(msg.sender, _2807)
                    uint8(stor[sha3(mem[mem[64] len _2946 + _2809 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2946) <= _2946:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8901 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8968 = mem[_8901]
                            require mem[_8901] == mem[_8901 + 12 len 20]
                            _9032 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9316 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9032 + 132] = 32
                            mem[_9032 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8968)):
                                revert with 0, 'Address: call to non-contract'
                            _9508 = mem[_9316]
                            mem[_9032 + 196 len ceil32(mem[_9316])] = mem[_9316 + 32 len ceil32(mem[_9316])]
                            if ceil32(_9508) > _9508:
                                mem[_9508 + _9032 + 196] = 0
                            call address(_8968) with:
                                 gas gas_remaining wei
                                args mem[_9032 + 200 len _9508 - 4]
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
                                mem[_9032 + 196] = msg.sender
                                mem[_9032 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9032 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9032 + ceil32(return_data.size) + 197
                                mem[_9032 + 196] = return_data.size
                                mem[_9032 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9032 + 228] == bool(mem[_9032 + 228])
                                    if not mem[_9032 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9032 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9032 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8969 = mem[_8903]
                            require mem[_8903] == mem[_8903 + 12 len 20]
                            _9033 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9318 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9033 + 132] = 32
                            mem[_9033 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8969)):
                                revert with 0, 'Address: call to non-contract'
                            _9510 = mem[_9318]
                            mem[_9033 + 196 len ceil32(mem[_9318])] = mem[_9318 + 32 len ceil32(mem[_9318])]
                            if ceil32(_9510) > _9510:
                                mem[_9510 + _9033 + 196] = 0
                            call address(_8969) with:
                                 gas gas_remaining wei
                                args mem[_9033 + 200 len _9510 - 4]
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
                                mem[_9033 + 196] = msg.sender
                                mem[_9033 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9033 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9033 + ceil32(return_data.size) + 197
                                mem[_9033 + 196] = return_data.size
                                mem[_9033 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9033 + 228] == bool(mem[_9033 + 228])
                                    if not mem[_9033 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9033 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9033 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                else:
                    if _2443 < 1:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    if _2443 > 3:
                        revert with 0, 'UniftyMarketSwap#requestSwap: invalid tier.'
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    _2811 = sha3(mem[0], 3)
                    _2812 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2812] = arg1
                    mem[_2812 + 32] = arg2
                    mem[_2812 + 64] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[_2812 + 96] = msg.sender
                    mem[_2812 + 128] = arg3
                    mem[_2812 + 160] = 0
                    mem[_2812 + 192] = 0
                    uint256(stor[_2811].field_0)++
                    uint256(stor[(6 * uint256(stor[_2811].field_0)) + sha3(_2811)].field_0) = arg1
                    uint256(stor[(6 * uint256(stor[_2811].field_0)) + sha3(_2811) + 1].field_0) = arg2
                    address(stor[(6 * uint256(stor[_2811].field_0)) + sha3(_2811) + 2].field_0) = mem[_2812 + 76 len 20]
                    address(stor[(6 * uint256(stor[_2811].field_0)) + sha3(_2811) + 3].field_0) = msg.sender
                    uint256(stor[(6 * uint256(stor[_2811].field_0)) + sha3(_2811) + 4].field_0) = arg3
                    uint8(stor[(6 * uint256(stor[_2811].field_0)) + sha3(_2811) + 5].field_0) = 0
                    Mask(248, 0, stor[(6 * uint256(stor[_2811].field_0)) + sha3(_2811) + 5].field_8) = 0
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2823 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2823] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    mem[32] = 3
                    if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    mem[_2823 + 32] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                    uint256(sub_873385e0[address(msg.sender)].field_0)++
                    mem[0] = sha3(address(msg.sender), 4)
                    address(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_0) = mem[_2823 + 12 len 20]
                    uint256(sub_873385e0[address(msg.sender)][uint256(sub_873385e0[address(msg.sender)].field_0)].field_256) = mem[_2823 + 32]
                    mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                    _2889 = sha3(mem[0], 5)
                    mem[0] = msg.sender
                    mem[32] = _2889
                    _2891 = mem[64]
                    mem[mem[64] + 32] = arg1
                    _2947 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    _2955 = mem[_2947]
                    mem[_2891 + 64 len ceil32(mem[_2947])] = mem[_2947 + 32 len ceil32(mem[_2947])]
                    mem[_2955 + _2891 + 64] = sha3(msg.sender, _2889)
                    uint8(stor[sha3(mem[mem[64] len _2955 + _2891 + -mem[64] + 96])].field_0) = 1
                    if ceil32(_2955) <= _2955:
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8970 = mem[_8905]
                            require mem[_8905] == mem[_8905 + 12 len 20]
                            _9034 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9320 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9034 + 132] = 32
                            mem[_9034 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8970)):
                                revert with 0, 'Address: call to non-contract'
                            _9512 = mem[_9320]
                            mem[_9034 + 196 len ceil32(mem[_9320])] = mem[_9320 + 32 len ceil32(mem[_9320])]
                            if ceil32(_9512) > _9512:
                                mem[_9512 + _9034 + 196] = 0
                            call address(_8970) with:
                                 gas gas_remaining wei
                                args mem[_9034 + 200 len _9512 - 4]
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
                                mem[_9034 + 196] = msg.sender
                                mem[_9034 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9034 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9034 + ceil32(return_data.size) + 197
                                mem[_9034 + 196] = return_data.size
                                mem[_9034 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9034 + 228] == bool(mem[_9034 + 228])
                                    if not mem[_9034 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9034 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9034 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
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
                            stor11 = 1
                            mem[mem[64]] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                        else:
                            require ext_code.size(genesisAddress)
                            staticcall genesisAddress.nifAddress() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8907 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8971 = mem[_8907]
                            require mem[_8907] == mem[_8907 + 12 len 20]
                            _9035 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _9322 = mem[64]
                            mem[mem[64]] = 100
                            mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                            mem[64] = mem[64] + 196
                            mem[_9035 + 132] = 32
                            mem[_9035 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_8971)):
                                revert with 0, 'Address: call to non-contract'
                            _9514 = mem[_9322]
                            mem[_9035 + 196 len ceil32(mem[_9322])] = mem[_9322 + 32 len ceil32(mem[_9322])]
                            if ceil32(_9514) > _9514:
                                mem[_9514 + _9035 + 196] = 0
                            call address(_8971) with:
                                 gas gas_remaining wei
                                args mem[_9035 + 200 len _9514 - 4]
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
                                mem[_9035 + 196] = msg.sender
                                mem[_9035 + 228] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
                                mem[_9035 + 196] = uint256(sub_176b8aab[mem[0]].field_0) - 1
                            else:
                                mem[64] = _9035 + ceil32(return_data.size) + 197
                                mem[_9035 + 196] = return_data.size
                                mem[_9035 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_9035 + 228] == bool(mem[_9035 + 228])
                                    if not mem[_9035 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                mem[32] = 3
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                mem[_9035 + ceil32(return_data.size) + 197] = msg.sender
                                mem[_9035 + ceil32(return_data.size) + 229] = arg3
                                emit 0x930ca476: msg.sender, arg3, arg1, arg2, uint256(sub_176b8aab[mem[0]].field_0) - 1
                                mem[0] = mem[_238 + ceil32(return_data.size) + 12 len 20]
                                if 1 > uint256(sub_176b8aab[mem[0]].field_0):
                                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                                stor11 = 1
    return (uint256(sub_176b8aab[mem[0]].field_0) - 1)
}



}
