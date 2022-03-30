contract main {




// =====================  Runtime code  =====================


#
#  - getAsk(uint256 arg1)
#  - sub_75d0be1e(?)
#  - buy(address arg1, uint256 arg2, uint256 arg3)
#  - sub_d15e2931(?)
#  - sub_d90715d0(?)
#
uint32 stor0;
address owner;
mapping of uint8 stor1;
uint32 stor2;
address feeAddress;
uint256 stor2;
uint256 fee;
array of struct asks;
array of uint256 sub_ef197210;
mapping of uint256 stor6;
array of uint256 sub_29e906ca;
mapping of uint256 stor8;
mapping of uint256 funds;
mapping of uint256 controllerFunds;
mapping of uint256 stor11;
mapping of address sub_8e45c655;
mapping of struct stor13;
address genesisAddress;
uint8 sub_c0dc1a9c; offset 160
uint8 constructed; offset 168
address wrapperAddress;
uint256 stor15;
uint256 stor16;

function asks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < asks.length
    return asks[arg1].field_0, 
           asks[arg1].field_1024,
           asks[arg1].field_1536,
           asks[arg1].field_1792,
           bool(asks[arg1].field_2048),
           asks[arg1].field_2304,
           asks[arg1].field_2560
}

function sub_29e906ca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_29e906ca[arg1]
    return sub_29e906ca[arg1][arg2]
}

function constructed() payable {
    return bool(constructed)
}

function feeAddress() payable {
    return address(feeAddress)
}

function getAsksLength() payable {
    return asks.length
}

function sub_885d8f84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < asks.length
    return asks[arg1].field_512
}

function owner() payable {
    return address(owner)
}

function sub_8e45c655(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sub_8e45c655[arg1])
}

function funds(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return funds[arg1][arg2]
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

function sub_c0dc1a9c(?) payable {
    return bool(sub_c0dc1a9c)
}

function fee() payable {
    return fee
}

function controllerFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return controllerFunds[arg1]
}

function sub_ef197210(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_ef197210.length
    return sub_ef197210[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == address(owner))
}

function sub_8a465cf7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ef197210.length, sub_29e906ca[address(arg1)]
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function sub_5e068739(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < asks.length
    if not asks[arg2].field_0:
        return not not asks[arg2].field_0
    require arg2 < asks.length
    return (asks[arg2].field_0 == address(arg1))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function renounceWhitelistAdmin() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function sub_616f8a45(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor6[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
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

function sub_70c8757f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = stor8[arg1][arg2[all]]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_058ab8f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = stor11[arg1][arg2[all]]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function init() payable {
    if constructed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarket: must not be constructed yet'
    constructed = 1
    fee = 200
    stor16 = 1
    address(owner) = msg.sender
    emit OwnershipTransferred(0, msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(msg.sender)] = 1
    emit WhitelistAdminAdded(msg.sender);
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarket#setup: Fee too large.'
    fee = arg1
    address(feeAddress) = address(arg2)
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

function sub_0b0673eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor13[arg1[all]].field_0
    mem[ceil32(arg1.length) + 160] = stor13[arg1[all]].field_1024
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           stor13[arg1[all]].field_1536,
           stor13[arg1[all]].field_1792,
           bool(stor13[arg1[all]].field_2048),
           stor13[arg1[all]].field_2304,
           stor13[arg1[all]].field_2560
}

function sub_c4fd030e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor16 != 1:
        revert with 0, 'UniftyMarket: LOCKED'
    stor16 = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if genesisAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarket#setGenesis: Genesis set already'
    genesisAddress = address(arg1)
    wrapperAddress = address(arg2)
    stor16 = 1
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

function setRoyalty(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor16 != 1:
        revert with 0, 'UniftyMarket: LOCKED'
    stor16 = 0
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'UniftyMarket#setRoyalty: Not the collection owner. Access denied.'
    if arg3 > 5000:
        revert with 0, 'UniftyMarketWrapper#setRoyalty: Max. 50% royalties allowed.'
    stor11[address(arg1)][arg2] = arg3
    uint256(sub_8e45c655[address(arg1)]) = msg.sender or Mask(96, 160, uint256(sub_8e45c655[address(arg1)]))
    stor16 = 1
}

function sub_cedb43b6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg1 < asks.length
    if var41003 >= asks[arg1].field_512:
        return 0
    require arg1 < asks.length
    require var45004 < asks[arg1].field_512
    if stor[sha3((12 * arg1) + ('name', 'asks', 4) + 2) + var45004].field_0 != address(arg2):
        if arg1 < asks.length:
            mem[0] = 4
            if var45004 + 1 >= asks[arg1].field_512:
                return 0
            if arg1 < asks.length:
                var45004 = var45004 + 1
                continue 
    else:
        if arg1 < asks.length:
            if var45004 < asks[arg1].field_768:
                if stor[sha3((12 * arg1) + ('name', 'asks', 4) + 3) + var45004].field_0 == arg3:
                    return var45004
                if arg1 < asks.length:
                    mem[0] = 4
                    if var45004 + 1 >= asks[arg1].field_512:
                        return 0
                    if arg1 < asks.length:
                        var45004 = var45004 + 1
                        continue 
    revert
}

function withdrawBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16 != 1:
        revert with 0, 'UniftyMarket: LOCKED'
    stor16 = 0
    if not funds[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarket#withdrawBalance: Insufficient funds.'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < funds[msg.sender][address(arg1)]:
        revert with 0, 'UniftyMarket#withdrawBalance: Insufficient funds.'
    funds[msg.sender][address(arg1)] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = funds[msg.sender][address(arg1)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), msg.sender, funds[msg.sender][address(arg1)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, funds[msg.sender][address(arg1)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, funds[msg.sender][address(arg1)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
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
    emit 0xed6f8d0c: funds[msg.sender][address(arg1)], msg.sender, arg1
    stor16 = 1
}

function withdrawFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16 != 1:
        revert with 0, 'UniftyMarket: LOCKED'
    stor16 = 0
    if not controllerFunds[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniftyMarket#withdrawFee: Insufficient funds.'
    controllerFunds[address(arg1)] = 0
    mem[100] = address(owner)
    mem[132] = wrapperAddress
    require ext_code.size(genesisAddress)
    staticcall genesisAddress.0xcd196c6 with:
            gas gas_remaining wei
           args address(owner), wrapperAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 3:
        mem[ceil32(return_data.size) + 132] = address(feeAddress)
        mem[ceil32(return_data.size) + 164] = controllerFunds[address(arg1)]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), controllerFunds[address(arg1)], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), controllerFunds[address(arg1)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), controllerFunds[address(arg1)], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(stor0), stor15 == bool(uint32(stor0), stor15)
                if not uint32(stor0), stor15:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
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
        stor16 = 1
    mem[ceil32(return_data.size) + 100] = address(owner)
    mem[ceil32(return_data.size) + 132] = wrapperAddress
    require ext_code.size(genesisAddress)
    staticcall genesisAddress.0xe4594cd5 with:
            gas gas_remaining wei
           args address(owner), wrapperAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 132] = address(feeAddress)
        mem[(2 * ceil32(return_data.size)) + 164] = controllerFunds[address(arg1)]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor2)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), controllerFunds[address(arg1)], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), controllerFunds[address(arg1)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), controllerFunds[address(arg1)], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(stor0), stor15 == bool(uint32(stor0), stor15)
                if not uint32(stor0), stor15:
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
        stor16 = 1
    if not controllerFunds[address(arg1)]:
        require ext_code.size(genesisAddress)
        staticcall genesisAddress.0x41275358 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 164] = 0
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(stor0), stor15 == bool(uint32(stor0), stor15)
                if not uint32(stor0), stor15:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(4 * ceil32(return_data.size)) + 296] = address(feeAddress)
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 68
            mem[(4 * ceil32(return_data.size)) + 292 len 4] = transfer(address rg1, uint256 rg2)
            mem[(4 * ceil32(return_data.size)) + 360] = 32
            mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(feeAddress), 0, 0
            mem[(4 * ceil32(return_data.size)) + 492] = 0
            call arg1 with:
               funct Mask(32, 224, 0, address(feeAddress), 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(feeAddress), 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor0), stor15 == bool(uint32(stor0), stor15)
                    if not uint32(stor0), stor15:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                    if not mem[(4 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor16 = 1
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
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(feeAddress)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(feeAddress), 0, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call arg1 with:
           funct Mask(32, 224, 0, address(feeAddress), 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(feeAddress), 0, 0) << 288)
    else:
        if 10^18 * controllerFunds[address(arg1)] / controllerFunds[address(arg1)] != 10^18:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        require ext_code.size(genesisAddress)
        staticcall genesisAddress.0x41275358 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 164] = 10^18 * controllerFunds[address(arg1)] / 2 / 10^18
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(stor0), stor15 == bool(uint32(stor0), stor15)
                if not uint32(stor0), stor15:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(4 * ceil32(return_data.size)) + 296] = address(feeAddress)
            mem[(4 * ceil32(return_data.size)) + 328] = 10^18 * controllerFunds[address(arg1)] / 2 / 10^18
            mem[(4 * ceil32(return_data.size)) + 260] = 68
            mem[(4 * ceil32(return_data.size)) + 292 len 4] = transfer(address rg1, uint256 rg2)
            mem[(4 * ceil32(return_data.size)) + 360] = 32
            mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(feeAddress), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0
            mem[(4 * ceil32(return_data.size)) + 492] = 0
            call arg1 with:
               funct Mask(32, 224, 0, address(feeAddress), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(feeAddress), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor0), stor15 == bool(uint32(stor0), stor15)
                    if not uint32(stor0), stor15:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                    if not mem[(4 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor16 = 1
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
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(feeAddress)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 10^18 * controllerFunds[address(arg1)] / 2 / 10^18
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address rg1, uint256 rg2)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(feeAddress), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call arg1 with:
           funct Mask(32, 224, 0, address(feeAddress), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(feeAddress), 10^18 * controllerFunds[address(arg1)] / 2 / 10^18, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor0), stor15 == bool(uint32(stor0), stor15)
            if not uint32(stor0), stor15:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        stor16 = 1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 430] = 32
        mem[(8 * ceil32(return_data.size)) + 462] = 32
        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 426
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        stor16 = 1
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        stor16 = 1
    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 430] = 32
    mem[(8 * ceil32(return_data.size)) + 462] = 42
    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (8 * ceil32(return_data.size)) + 426
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
