contract main {




// =====================  Runtime code  =====================


#
#  - sellExactTokensForTokens(bytes arg1, bytes arg2, uint256 arg3, uint16 arg4, bool arg5, uint256 arg6)
#  - withdrawToken(address arg1, uint256 arg2)
#  - sellExactTokensForTokens(bytes arg1, bytes arg2, uint256 arg3, uint16 arg4, bool arg5, uint256 arg6, uint256 arg7)
#
const ADMIN_ROLE = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0


address MAIN_CONTRACTAddress;
address UNISWAP_FACTORY_ADDRESS;
address UNISWAP_ROUTER_ADDRESS;
address ADMIN_ADDRESS;
address owner;
mapping of struct roleAdmin;
uint128 stor6; offset 160
address gasFundingTokenAddress;
mapping of uint8 stor7;
uint256 lifetimeGasWithrawn;
uint256 maxLifetimeGasWithdrawl;
uint128 gasFundingEstimatedGas;
uint128 gasFundingEstimatedGasDiscounted; offset 128

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function gasFundingEstimatedGasDiscounted() payable {
    return gasFundingEstimatedGasDiscounted
}

function maxLifetimeGasWithdrawl() payable {
    return maxLifetimeGasWithdrawl
}

function MAIN_CONTRACT() payable {
    return MAIN_CONTRACTAddress
}

function UNISWAP_ROUTER_ADDRESS() payable {
    return UNISWAP_ROUTER_ADDRESS
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function lifetimeGasWithrawn() payable {
    return lifetimeGasWithrawn
}

function UNISWAP_FACTORY_ADDRESS() payable {
    return UNISWAP_FACTORY_ADDRESS
}

function gasFundingEstimatedGas() payable {
    return gasFundingEstimatedGas
}

function getGasFundingTokenAddress() payable {
    return gasFundingTokenAddress
}

function ADMIN_ADDRESS() payable {
    return ADMIN_ADDRESS
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

function setMaxLifetimeGasWithdrawl(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxLifetimeGasWithdrawl = arg1
}

function setBypassSignature(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = Mask(96, 0, arg1)
}

function setRootRole() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        uint8(roleAdmin[0][address(msg.sender)].field_0) = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    return 1
}

function setDefaultGasEstimates(uint128 arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gasFundingEstimatedGas = arg1
    gasFundingEstimatedGasDiscounted = arg2
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setGasFundingTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VELOXSWAP: ZERO_GAS_FUNDING_TOKEN_ADDRESS'
    gasFundingTokenAddress = arg1
    emit GasFundingTokenChanged(gasFundingTokenAddress, arg1);
}

function withdrawETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeloxTransferHelper: TO_ZERO_ADDRESS'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function executedStrategies(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor7[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function setUpAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == owner:
        revert with 0, 'VELOXPROXY_ADMIN_OWNER'
    if not uint8(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0):
        uint8(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0) = 1
        emit RoleGranted(0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, arg1, msg.sender);
    return 1
}

function revokeAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == owner:
        revert with 0, 'VELOXPROXY_ADMIN_OWNER'
    if not uint8(roleAdmin[uint256(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_256)][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint8(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0):
        uint8(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0) = 0
        emit RoleRevoked(0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, arg1, msg.sender);
    return 1
}

function grantAdminRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == owner:
        revert with 0, 'VELOXPROXY_ADMIN_OWNER'
    if not uint8(roleAdmin[uint256(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_256)][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint8(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0):
        uint8(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(arg1)].field_0) = 1
        emit RoleGranted(0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, arg1, msg.sender);
    return 1
}

function setKnownExchange(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'VELOXSWAP: INVALID_ROUTER_ZERO_ADDRESS'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'VELOXSWAP: INVALID_ROUTER_ADDRESS'
    require ext_code.size(arg2)
    staticcall arg2.0xc45a0155 with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] == Mask(8 * -ceil32(arg1.length) + arg1.length + 20, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 20, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        revert with 0, 'VELOXSWAP: INVALID_ROUTER'
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 128] = 11
    stor[sha3(mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len arg1.length + 32])] = arg2
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit ExchangeRegistered(sha3(mem[ceil32(arg1.length) + ceil32(return_data.size) + 128 len arg1.length]), arg2);
}

function fundGasCost(string arg1, address arg2, bytes32 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if not uint8(roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0):
        revert with 0, 'VELOXSWAP: NOT_ADMIN'
    if lifetimeGasWithrawn > !arg4:
        revert with 0, 17
    lifetimeGasWithrawn += arg4
    if lifetimeGasWithrawn >= maxLifetimeGasWithdrawl:
        revert with 0, 'Reached the max gas withdrawn; Admin must increase allowance'
    if not gasFundingTokenAddress:
        revert with 0, 'VeloxTransferHelper: TOKEN_ZERO_ADDRESS'
    if not arg2:
        revert with 0, 'VeloxTransferHelper: FROM_ZERO_ADDRESS'
    if not msg.sender:
        revert with 0, 'VeloxTransferHelper: TO_ZERO_ADDRESS'
    mem[ceil32(arg1.length) + 164] = arg2
    mem[ceil32(arg1.length) + 196] = msg.sender
    mem[ceil32(arg1.length) + 228] = arg4
    mem[ceil32(arg1.length) + 128] = 100
    mem[ceil32(arg1.length) + 164 len 28] = address(arg2) << 64
    mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 260 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 260] = 0
    call gasFundingTokenAddress.mem[ceil32(arg1.length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 264 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'VeloxTransferHelper: TRANSFER_FROM_FAILED'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'VeloxTransferHelper: TRANSFER_FROM_FAILED'
    else:
        mem[ceil32(arg1.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'VeloxTransferHelper: TRANSFER_FROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + 292] == bool(mem[ceil32(arg1.length) + 292])
            if not mem[ceil32(arg1.length) + 292]:
                revert with 0, 'VeloxTransferHelper: TRANSFER_FROM_FAILED'
    emit GasFunded(arg4, sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), arg2, arg3);
}



}
