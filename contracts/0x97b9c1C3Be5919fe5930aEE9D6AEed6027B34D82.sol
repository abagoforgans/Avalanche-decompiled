contract main {




// =====================  Runtime code  =====================


#
#  - redeem(uint256 arg1, uint256 arg2, uint256 arg3)
#
address owner;
uint8 stor2;
uint8 stor2; offset 8
uint16 stor2;
address oracleAddress; offset 16
address collateralAddress;
address dollarAddress;
address treasuryAddress;
address shareAddress;
mapping of uint256 redeem_share_balances;
mapping of uint256 redeem_collateral_balances;
uint256 unclaimed_pool_collateral;
uint256 unclaimed_pool_share;
uint256 sub_ba0b8a14;
mapping of uint256 last_redeemed;
uint8 stor13;
uint256 stor13; offset 8
uint256 stor13;
uint256 redemption_delay;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8
uint256 stor15;
uint256 period;
uint256 mintLimit;
uint256 sub_d72f39a0;
uint256 sub_58794456;
uint256 sub_6ce93399;
uint256 sub_1e5f82de;

function redemption_delay() payable {
    return redemption_delay
}

function sub_1e5f82de(?) payable {
    return sub_1e5f82de
}

function sub_47734728(?) payable {
    return sub_ba0b8a14
}

function dollar() payable {
    return dollarAddress
}

function redeem_share_balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return redeem_share_balances[arg1]
}

function sub_58794456(?) payable {
    return sub_58794456
}

function treasury() payable {
    return treasuryAddress
}

function sub_6ce93399(?) payable {
    return sub_6ce93399
}

function oracle() payable {
    return oracleAddress
}

function redeem_paused() payable {
    return bool(uint8(stor15.field_8))
}

function owner() payable {
    return owner
}

function mintLimit() payable {
    return mintLimit
}

function share() payable {
    return shareAddress
}

function sub_ba0b8a14(?) payable {
    return sub_ba0b8a14
}

function mint_paused() payable {
    return bool(uint8(stor15.field_0))
}

function unclaimed_pool_share() payable {
    return unclaimed_pool_share
}

function redeem_collateral_balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return redeem_collateral_balances[arg1]
}

function sub_d72f39a0(?) payable {
    return sub_d72f39a0
}

function collateral() payable {
    return collateralAddress
}

function last_redeemed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return last_redeemed[arg1]
}

function period() payable {
    return period
}

function unclaimed_pool_collateral() payable {
    return unclaimed_pool_collateral
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

function sub_fb81a6b0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d72f39a0 = arg1
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
}

function setMintLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintLimit = arg1
}

function toggleRedeeming() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, not uint8(stor15.field_8))
}

function setRedemptionDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    redemption_delay = arg1
}

function toggleMinting() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor15.field_0) = not uint8(stor15.field_0) or Mask(248, 8, uint256(stor15.field_0))
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    oracleAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
}

function getCollateralPrice() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function collateralReserve() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x465b0c41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function info() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return unclaimed_pool_collateral, 
           unclaimed_pool_share,
           ext_call.return_data[0],
           bool(uint8(stor15.field_0)),
           bool(uint8(stor15.field_8))
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not uint8(stor2.field_8):
        if uint8(stor2.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor2.field_8):
            uint16(stor2.field_0) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dollarAddress = arg1
    shareAddress = arg2
    collateralAddress = arg3
    treasuryAddress = arg4
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    uint8(stor13.field_0) = uint8(-ext_call.return_data[31 len 1] + 18)
    Mask(248, 0, stor13.field_8) = 0
    period = arg5
    mintLimit = arg6
    sub_d72f39a0 = arg7
    if not uint8(stor2.field_8):
        uint8(stor2.field_8) = 0
}

function collectRedemption() payable {
    if last_redeemed[msg.sender] > !redemption_delay:
        revert with 0, 17
    if last_redeemed[msg.sender] + redemption_delay > block.number:
        revert with 0, '<redemption_delay'
    if not redeem_share_balances[msg.sender]:
        if redeem_collateral_balances[msg.sender]:
            redeem_collateral_balances[msg.sender] = 0
            if unclaimed_pool_collateral < redeem_collateral_balances[msg.sender]:
                revert with 0, 17
            unclaimed_pool_collateral -= redeem_collateral_balances[msg.sender]
            require ext_code.size(treasuryAddress)
            call treasuryAddress.0xa4293ead with:
                 gas gas_remaining wei
                args collateralAddress, msg.sender, redeem_collateral_balances[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        redeem_share_balances[msg.sender] = 0
        if unclaimed_pool_share < redeem_share_balances[msg.sender]:
            revert with 0, 17
        unclaimed_pool_share -= redeem_share_balances[msg.sender]
        if not redeem_collateral_balances[msg.sender]:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.0xa4293ead with:
                 gas gas_remaining wei
                args shareAddress, msg.sender, redeem_share_balances[msg.sender]
        else:
            redeem_collateral_balances[msg.sender] = 0
            if unclaimed_pool_collateral < redeem_collateral_balances[msg.sender]:
                revert with 0, 17
            unclaimed_pool_collateral -= redeem_collateral_balances[msg.sender]
            require ext_code.size(treasuryAddress)
            call treasuryAddress.0xa4293ead with:
                 gas gas_remaining wei
                args shareAddress, msg.sender, redeem_share_balances[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(treasuryAddress)
            call treasuryAddress.0xa4293ead with:
                 gas gas_remaining wei
                args collateralAddress, msg.sender, redeem_collateral_balances[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor15.field_0):
        revert with 0, 'Minting is paused'
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x370158ea with:
            gas gas_remaining wei
    mem[96 len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Invalid share price'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.consult() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[96]:
        if arg2 and ext_call.return_data[32] > -1 / arg2:
            revert with 0, 17
        if arg2 * ext_call.return_data[32] / 10^6 and ext_call.return_data[192] > -1 / arg2 * ext_call.return_data[32] / 10^6:
            revert with 0, 17
        if arg2 * ext_call.return_data[32] / 10^6 < arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6:
            revert with 0, 17
        if arg3 > (arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6):
            revert with 0, 'slippage'
        if arg2:
            if arg2 > arg2:
                revert with 0, 'Not enough SHARE input'
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 132] = arg2
            require ext_code.size(shareAddress)
            call shareAddress.poolBurnFrom(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x465b0c41 with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'Invalid reserve address'
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 196] = arg1
            mem[(4 * ceil32(return_data.size)) + 96] = 100
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 228] = 32
            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(collateralAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call collateralAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(dollarAddress)
        call dollarAddress.poolMint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_ba0b8a14 > !((arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6)):
            revert with 0, 17
        sub_ba0b8a14 = sub_ba0b8a14 + (arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6)
        if sub_58794456 < block.timestamp:
            if block.timestamp > !period:
                revert with 0, 17
            sub_58794456 = block.timestamp + period
            sub_6ce93399 = 0
            sub_1e5f82de = 0
        if sub_6ce93399 > !((arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6)):
            revert with 0, 17
        if sub_6ce93399 + (arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6) < sub_6ce93399:
            revert with 0, 'overflow'
        if sub_6ce93399 > !((arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6)):
            revert with 0, 17
        if sub_6ce93399 + (arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6) >= mintLimit:
            revert with 0, 'exceeds period limit'
        if sub_6ce93399 > !((arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6)):
            revert with 0, 17
        sub_6ce93399 = sub_6ce93399 + (arg2 * ext_call.return_data[32] / 10^6) - (arg2 * ext_call.return_data[32] / 10^6 * ext_call.return_data[192] / 10^6)
    else:
        if not uint256(stor13.field_0):
            if arg1 and 1 > -1 / arg1:
                revert with 0, 17
            if arg1 and ext_call.return_data[0] > -1 / arg1:
                revert with 0, 17
            if arg1 * ext_call.return_data[0] / 10^6 and 10^6 > -1 / arg1 * ext_call.return_data[0] / 10^6:
                revert with 0, 17
            if not ext_call.return_data[96]:
                revert with 0, 18
            if ext_call.return_data[96] >= 10^6:
                if 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] and ext_call.return_data[192] > -1 / 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]:
                    revert with 0, 17
                if 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6:
                    revert with 0, 17
                if arg3 > (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6):
                    revert with 0, 'slippage'
            else:
                if 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < arg1 * ext_call.return_data[0] / 10^6:
                    revert with 0, 17
                if (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (arg1 * ext_call.return_data[0] / 10^6) and 10^6 > -1 / (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (arg1 * ext_call.return_data[0] / 10^6):
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] and ext_call.return_data[192] > -1 / 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]:
                    revert with 0, 17
                if 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6:
                    revert with 0, 17
                if arg3 > (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6):
                    revert with 0, 'slippage'
                if (10^6 * 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]:
                    if (10^6 * 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6) / ext_call.return_data[32] > arg2:
                        revert with 0, 'Not enough SHARE input'
                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 132] = (10^6 * 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]
                    require ext_code.size(shareAddress)
                    call shareAddress.poolBurnFrom(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10^6 * 10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if arg1:
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x465b0c41 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Invalid reserve address'
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 196] = arg1
                mem[(4 * ceil32(return_data.size)) + 96] = 100
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(4 * ceil32(return_data.size)) + 228] = 32
                mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(collateralAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call collateralAddress with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(dollarAddress)
            call dollarAddress.poolMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_ba0b8a14 > !((10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                revert with 0, 17
            sub_ba0b8a14 = sub_ba0b8a14 + (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
            if sub_58794456 < block.timestamp:
                if block.timestamp > !period:
                    revert with 0, 17
                sub_58794456 = block.timestamp + period
                sub_6ce93399 = 0
                sub_1e5f82de = 0
            if sub_6ce93399 > !((10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                revert with 0, 17
            if sub_6ce93399 + (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6) < sub_6ce93399:
                revert with 0, 'overflow'
            if sub_6ce93399 > !((10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                revert with 0, 17
            if sub_6ce93399 + (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6) >= mintLimit:
                revert with 0, 'exceeds period limit'
            if sub_6ce93399 > !((10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                revert with 0, 17
            sub_6ce93399 = sub_6ce93399 + (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
        else:
            if bool(bool(uint256(stor13.field_0) < 78)) or bool(bool(uint256(stor13.field_0) < 32)):
                if arg1 and 10^uint256(stor13.field_0) > -1 / arg1:
                    revert with 0, 17
                if arg1 * 10^uint256(stor13.field_0) and ext_call.return_data[0] > -1 / arg1 * 10^uint256(stor13.field_0):
                    revert with 0, 17
                if arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 and 10^6 > -1 / arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6:
                    revert with 0, 17
                if not ext_call.return_data[96]:
                    revert with 0, 18
                if ext_call.return_data[96] >= 10^6:
                    if 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] and ext_call.return_data[192] > -1 / 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]:
                        revert with 0, 17
                    if 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6:
                        revert with 0, 17
                    if arg3 > (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6):
                        revert with 0, 'slippage'
                else:
                    if 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6:
                        revert with 0, 17
                    if (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6) and 10^6 > -1 / (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6):
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] and ext_call.return_data[192] > -1 / 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]:
                        revert with 0, 17
                    if 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6:
                        revert with 0, 17
                    if arg3 > (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6):
                        revert with 0, 'slippage'
                    if (10^6 * 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]:
                        if (10^6 * 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6) / ext_call.return_data[32] > arg2:
                            revert with 0, 'Not enough SHARE input'
                        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 132] = (10^6 * 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]
                        require ext_code.size(shareAddress)
                        call shareAddress.poolBurnFrom(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^6 * 10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if arg1:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x465b0c41 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Invalid reserve address'
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 196] = arg1
                    mem[(4 * ceil32(return_data.size)) + 96] = 100
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + 228] = 32
                    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0
                    mem[(4 * ceil32(return_data.size)) + 392] = 0
                    call collateralAddress with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                            if not mem[(4 * ceil32(return_data.size)) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(dollarAddress)
                call dollarAddress.poolMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ba0b8a14 > !((10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                sub_ba0b8a14 = sub_ba0b8a14 + (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
                if sub_58794456 < block.timestamp:
                    if block.timestamp > !period:
                        revert with 0, 17
                    sub_58794456 = block.timestamp + period
                    sub_6ce93399 = 0
                    sub_1e5f82de = 0
                if sub_6ce93399 > !((10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                if sub_6ce93399 + (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6) < sub_6ce93399:
                    revert with 0, 'overflow'
                if sub_6ce93399 > !((10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                if sub_6ce93399 + (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6) >= mintLimit:
                    revert with 0, 'exceeds period limit'
                if sub_6ce93399 > !((10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                sub_6ce93399 = sub_6ce93399 + (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * 10^uint256(stor13.field_0) * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
            else:
                s = 10
                t = 1
                idx = uint256(stor13.field_0)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if arg1 and s * t > -1 / arg1:
                    revert with 0, 17
                if arg1 * s * t and ext_call.return_data[0] > -1 / arg1 * s * t:
                    revert with 0, 17
                if arg1 * s * t * ext_call.return_data[0] / 10^6 and 10^6 > -1 / arg1 * s * t * ext_call.return_data[0] / 10^6:
                    revert with 0, 17
                if not ext_call.return_data[96]:
                    revert with 0, 18
                if ext_call.return_data[96] >= 10^6:
                    if 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] and ext_call.return_data[192] > -1 / 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]:
                        revert with 0, 17
                    if 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6:
                        revert with 0, 17
                    if arg3 > (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6):
                        revert with 0, 'slippage'
                else:
                    if 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < arg1 * s * t * ext_call.return_data[0] / 10^6:
                        revert with 0, 17
                    if (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (arg1 * s * t * ext_call.return_data[0] / 10^6) and 10^6 > -1 / (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (arg1 * s * t * ext_call.return_data[0] / 10^6):
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] and ext_call.return_data[192] > -1 / 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]:
                        revert with 0, 17
                    if 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] < 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6:
                        revert with 0, 17
                    if arg3 > (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6):
                        revert with 0, 'slippage'
                    if (10^6 * 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]:
                        if (10^6 * 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6) / ext_call.return_data[32] > arg2:
                            revert with 0, 'Not enough SHARE input'
                        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 132] = (10^6 * 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]
                        require ext_code.size(shareAddress)
                        call shareAddress.poolBurnFrom(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^6 * 10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6) / ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if arg1:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x465b0c41 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Invalid reserve address'
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 196] = arg1
                    mem[(4 * ceil32(return_data.size)) + 96] = 100
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + 228] = 32
                    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(collateralAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0
                    mem[(4 * ceil32(return_data.size)) + 392] = 0
                    call collateralAddress with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                            if not mem[(4 * ceil32(return_data.size)) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(dollarAddress)
                call dollarAddress.poolMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_ba0b8a14 > !((10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                sub_ba0b8a14 = sub_ba0b8a14 + (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
                if sub_58794456 < block.timestamp:
                    if block.timestamp > !period:
                        revert with 0, 17
                    sub_58794456 = block.timestamp + period
                    sub_6ce93399 = 0
                    sub_1e5f82de = 0
                if sub_6ce93399 > !((10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                if sub_6ce93399 + (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6) < sub_6ce93399:
                    revert with 0, 'overflow'
                if sub_6ce93399 > !((10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                if sub_6ce93399 + (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6) >= mintLimit:
                    revert with 0, 'exceeds period limit'
                if sub_6ce93399 > !((10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)):
                    revert with 0, 17
                sub_6ce93399 = sub_6ce93399 + (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96]) - (10^6 * arg1 * s * t * ext_call.return_data[0] / 10^6 / ext_call.return_data[96] * ext_call.return_data[192] / 10^6)
}



}
