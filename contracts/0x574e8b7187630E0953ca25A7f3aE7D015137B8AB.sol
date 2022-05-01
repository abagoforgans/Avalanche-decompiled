contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address strategistAddress;
uint32 stor2;
address unirouterAddress;
uint32 stor3;
address vaultAddress;
uint256 stor3;
address pltFeeRecipientAddress;
mapping of uint8 stor5;
address wrappedAddress;
address outputAddress;
address wantAddress;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 PLATFORM_FEE;
uint32 stor13;
address masterchefAddress;
uint256 stor13;
uint256 poolId;
array of struct outputToWrappedRoute;
array of struct sub_180aca63;
array of struct stor17;
uint8 wrappedRoute;

function sub_180aca63(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_180aca63.length
    return sub_180aca63[arg1].field_0
}

function outputToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWrappedRoute.length
    return outputToWrappedRoute[arg1].field_0
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return address(unirouterAddress)
}

function wrappedRoute() payable {
    return bool(wrappedRoute)
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function poolId() payable {
    return poolId
}

function wrapped() payable {
    return wrappedAddress
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function MAX_FEE() payable {
    return MAX_FEE
}

function pltFeeRecipient() payable {
    return pltFeeRecipientAddress
}

function output() payable {
    return outputAddress
}

function masterchef() payable {
    return address(masterchefAddress)
}

function vault() payable {
    return address(vaultAddress)
}

function beforeDeposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function setFees(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!manager'
    WITHDRAW_FEE = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setWrappedRoute(bool arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!auth to set route'
    wrappedRoute = uint8(arg1)
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(unirouterAddress) = arg1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!manager'
    stor5[address(arg1)] = uint8(arg2)
}

function setPLTFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    pltFeeRecipientAddress = arg1
}

function changePerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 100:
        revert with 0, 'Max Fee Exceeds'
    PLATFORM_FEE = arg1
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor13)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call outputAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor13)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call outputAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call outputAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, '!manager'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(masterchefAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor13)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call outputAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
        if stor0:
            revert with 0, 'Pausable: paused'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call outputAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(masterchefAddress))
            call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if stor0:
                revert with 0, 
                            'Pausable: paused',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(masterchefAddress))
            call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, arg1 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        if tx.origin == owner:
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
            mem[388 len 0] = 0
            call wantAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if stor0:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if not ext_call.return_data[0]:
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                else:
                    if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
    else:
        if tx.origin == owner:
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            mem[388 len 0] = 0
            call wantAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if stor0:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                mem[388 len 0] = 0
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if not arg1:
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                else:
                    if WITHDRAW_FEE * arg1 / arg1 != WITHDRAW_FEE:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
}

function makeCustomTxn(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if strategistAddress != msg.sender:
        revert with 0, '!auth for custom txn'
    mem[132] = arg3
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg4:
        mem[96] = arg1
        mem[128] = arg2
        stor17.length = 2
        s = 0
        idx = 96
        while 160 > idx:
            stor17[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[164] = arg4
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 600
        mem[228] = 160
        mem[324] = stor17.length
        if not stor17.length:
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor17.length
        else:
            mem[0] = 17
            mem[356] = address(stor17.field_0)
            idx = 356
            s = 0
            while (32 * stor17.length) + 356 > idx + 32:
                mem[idx + 32] = stor17[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[356 len 32 * stor17.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        require mem[160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160]) + 32 <= return_data.size
    else:
        mem[132] = arg3
        mem[164] = 0
        mem[96] = 68
        mem[132 len 28] = address(arg3) << 64
        mem[128 len 4] = approve(address arg1, uint256 arg2)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
        mem[352 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
            if not approve(address arg1, uint256 arg2), address(arg3) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[382 len 10]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[516 len 4] = 0
            mem[488 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(arg3) << 64:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                mem[424] = arg1
                mem[456] = arg2
                stor17.length = 2
                s = 0
                idx = 424
                while 488 > idx:
                    stor17[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor17.length > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[488] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[492] = arg4
                mem[524] = 0
                mem[588] = this.address
                mem[620] = block.timestamp + 600
                mem[556] = 160
                mem[652] = stor17.length
                if not stor17.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                else:
                    mem[0] = 17
                    mem[684] = address(stor17.field_0)
                    idx = 684
                    s = 0
                    while (32 * stor17.length) + 684 > idx + 32:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[684 len 32 * stor17.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 488
                require return_data.size >= 32
                require mem[488 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[488 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488] <= 4294967296 and mem[488 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488]) + 32 <= return_data.size
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                mem[ceil32(return_data.size) + 425] = arg1
                mem[ceil32(return_data.size) + 457] = arg2
                stor17.length = 2
                s = 0
                idx = ceil32(return_data.size) + 425
                while ceil32(return_data.size) + 489 > idx:
                    stor17[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor17.length > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 489] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 493] = arg4
                mem[ceil32(return_data.size) + 525] = 0
                mem[ceil32(return_data.size) + 589] = this.address
                mem[ceil32(return_data.size) + 621] = block.timestamp + 600
                mem[ceil32(return_data.size) + 557] = 160
                mem[ceil32(return_data.size) + 653] = stor17.length
                if not stor17.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                else:
                    mem[0] = 17
                    mem[ceil32(return_data.size) + 685] = address(stor17.field_0)
                    idx = ceil32(return_data.size) + 685
                    s = 0
                    while ceil32(return_data.size) + (32 * stor17.length) + 685 > idx + 32:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[ceil32(return_data.size) + 685 len 32 * stor17.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489]) + 32 <= return_data.size
        else:
            mem[260] = return_data.size
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            mem[ceil32(return_data.size) + 297] = arg3
            mem[ceil32(return_data.size) + 329] = -1
            mem[ceil32(return_data.size) + 261] = 68
            mem[ceil32(return_data.size) + 297 len 28] = address(arg3) << 64
            mem[ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 361] = 32
            mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call arg1 with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(arg3) << 64:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                mem[ceil32(return_data.size) + 425] = arg1
                mem[ceil32(return_data.size) + 457] = arg2
                stor17.length = 2
                s = 0
                idx = ceil32(return_data.size) + 425
                while ceil32(return_data.size) + 489 > idx:
                    stor17[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor17.length > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 489] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 493] = arg4
                mem[ceil32(return_data.size) + 525] = 0
                mem[ceil32(return_data.size) + 589] = this.address
                mem[ceil32(return_data.size) + 621] = block.timestamp + 600
                mem[ceil32(return_data.size) + 557] = 160
                mem[ceil32(return_data.size) + 653] = stor17.length
                if not stor17.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                else:
                    mem[0] = 17
                    mem[ceil32(return_data.size) + 685] = address(stor17.field_0)
                    idx = ceil32(return_data.size) + 685
                    s = 0
                    while ceil32(return_data.size) + (32 * stor17.length) + 685 > idx + 32:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[ceil32(return_data.size) + 685 len 32 * stor17.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489]) + 32 <= return_data.size
            else:
                mem[ceil32(return_data.size) + 425] = return_data.size
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                mem[(2 * ceil32(return_data.size)) + 426] = arg1
                mem[(2 * ceil32(return_data.size)) + 458] = arg2
                stor17.length = 2
                mem[0] = 17
                s = 0
                idx = (2 * ceil32(return_data.size)) + 426
                while (2 * ceil32(return_data.size)) + 490 > idx:
                    stor17[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor17.length > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(2 * ceil32(return_data.size)) + 490] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 494] = arg4
                mem[(2 * ceil32(return_data.size)) + 526] = 0
                mem[(2 * ceil32(return_data.size)) + 590] = this.address
                mem[(2 * ceil32(return_data.size)) + 622] = block.timestamp + 600
                mem[(2 * ceil32(return_data.size)) + 558] = 160
                mem[(2 * ceil32(return_data.size)) + 654] = stor17.length
                if not stor17.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                else:
                    mem[0] = 17
                    mem[(2 * ceil32(return_data.size)) + 686] = address(stor17.field_0)
                    idx = (2 * ceil32(return_data.size)) + 686
                    s = 0
                    while (2 * ceil32(return_data.size)) + (32 * stor17.length) + 686 > idx + 32:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[(2 * ceil32(return_data.size)) + 686 len 32 * stor17.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 490
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 490] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 490]) + 32 <= return_data.size
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 5
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'You are not whitelisted'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not MAX_FEE:
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[164] = 0 / MAX_FEE
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp
        mem[228] = 160
        mem[324] = outputToWrappedRoute.length
        if not outputToWrappedRoute.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(0 / MAX_FEE), 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            _45 = mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32
            require mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 160]
            _51 = mem[_45 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[_45 + 160])] = mem[_45 + 192 len floor32(mem[_45 + 160])]
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(wrappedAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _51) + ceil32(return_data.size) + 356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[(32 * _51) + ceil32(return_data.size) + 448 len 4] = 0
            mem[(32 * _51) + ceil32(return_data.size) + 420 len 0] = 0
            call wrappedAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _51) + ceil32(return_data.size) + 420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _51) + ceil32(return_data.size) + 356] = return_data.size
            mem[(32 * _51) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _51) + ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 467 len 22]
            if outputAddress != wantAddress:
                require ext_code.size(outputAddress)
                staticcall outputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 0
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = this.address
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = block.timestamp
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 160
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = sub_180aca63.length
                    if not sub_180aca63.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length
                    else:
                        mem[0] = 16
                        mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = address(sub_180aca63.field_0)
                        idx = (32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 553
                        s = 0
                        while (32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * sub_180aca63.length) + 553 > idx + 32:
                            mem[idx + 32] = sub_180aca63[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length, mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 32 * sub_180aca63.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _51) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    require mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357] <= 4294967296 and mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _51) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357]) + 32 <= return_data.size
        else:
            mem[0] = 15
            mem[356] = address(outputToWrappedRoute.field_0)
            idx = 356
            s = 0
            while (32 * outputToWrappedRoute.length) + 356 > idx + 32:
                mem[idx + 32] = outputToWrappedRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(0 / MAX_FEE), 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length, mem[356 len 32 * outputToWrappedRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            _898 = mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32
            require mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, 0 / MAX_FEE) >> 32 + 160]
            _923 = mem[_898 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[_898 + 160])] = mem[_898 + 192 len floor32(mem[_898 + 160])]
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(wrappedAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _923) + ceil32(return_data.size) + 356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[(32 * _923) + ceil32(return_data.size) + 448 len 4] = 0
            mem[(32 * _923) + ceil32(return_data.size) + 420 len 0] = 0
            call wrappedAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _923) + ceil32(return_data.size) + 420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _923) + ceil32(return_data.size) + 356] = return_data.size
            mem[(32 * _923) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _923) + ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 467 len 22]
            if outputAddress != wantAddress:
                require ext_code.size(outputAddress)
                staticcall outputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 0
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = this.address
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = block.timestamp
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 160
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = sub_180aca63.length
                    if not sub_180aca63.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length
                    else:
                        mem[0] = 16
                        mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = address(sub_180aca63.field_0)
                        idx = (32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 553
                        s = 0
                        while (32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * sub_180aca63.length) + 553 > idx + 32:
                            mem[idx + 32] = sub_180aca63[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length, mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 32 * sub_180aca63.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _923) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    require mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357] <= 4294967296 and mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _923) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357]) + 32 <= return_data.size
    else:
        if PLATFORM_FEE * ext_call.return_data[0] / ext_call.return_data[0] != PLATFORM_FEE:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not MAX_FEE:
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[164] = PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp
        mem[228] = 160
        mem[324] = outputToWrappedRoute.length
        if not outputToWrappedRoute.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE), 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            _48 = mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32
            require mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 160]
            _53 = mem[_48 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[_48 + 160])] = mem[_48 + 192 len floor32(mem[_48 + 160])]
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(wrappedAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _53) + ceil32(return_data.size) + 356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[(32 * _53) + ceil32(return_data.size) + 448 len 4] = 0
            mem[(32 * _53) + ceil32(return_data.size) + 420 len 0] = 0
            call wrappedAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _53) + ceil32(return_data.size) + 420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _53) + ceil32(return_data.size) + 356] = return_data.size
            mem[(32 * _53) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _53) + ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 467 len 22]
            if outputAddress != wantAddress:
                require ext_code.size(outputAddress)
                staticcall outputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 0
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = this.address
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = block.timestamp
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 160
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = sub_180aca63.length
                    if not sub_180aca63.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length
                    else:
                        mem[0] = 16
                        mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = address(sub_180aca63.field_0)
                        idx = (32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 553
                        s = 0
                        while (32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * sub_180aca63.length) + 553 > idx + 32:
                            mem[idx + 32] = sub_180aca63[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length, mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 32 * sub_180aca63.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _53) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    require mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357] <= 4294967296 and mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357]) + 32 <= return_data.size
        else:
            mem[0] = 15
            mem[356] = address(outputToWrappedRoute.field_0)
            idx = 356
            s = 0
            while (32 * outputToWrappedRoute.length) + 356 > idx + 32:
                mem[idx + 32] = outputToWrappedRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE), 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length, mem[356 len 32 * outputToWrappedRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            _896 = mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32
            require mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, PLATFORM_FEE * ext_call.return_data[0] / MAX_FEE) >> 32 + 160]
            _922 = mem[_896 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[_896 + 160])] = mem[_896 + 192 len floor32(mem[_896 + 160])]
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.size(wrappedAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _922) + ceil32(return_data.size) + 356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[(32 * _922) + ceil32(return_data.size) + 448 len 4] = 0
            mem[(32 * _922) + ceil32(return_data.size) + 420 len 0] = 0
            call wrappedAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _922) + ceil32(return_data.size) + 420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _922) + ceil32(return_data.size) + 356] = return_data.size
            mem[(32 * _922) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _922) + ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 467 len 22]
            if outputAddress != wantAddress:
                require ext_code.size(outputAddress)
                staticcall outputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = 0
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = this.address
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = block.timestamp
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 160
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = sub_180aca63.length
                    if not sub_180aca63.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length
                    else:
                        mem[0] = 16
                        mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = address(sub_180aca63.field_0)
                        idx = (32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 553
                        s = 0
                        while (32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + (32 * sub_180aca63.length) + 553 > idx + 32:
                            mem[idx + 32] = sub_180aca63[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, sub_180aca63.length, mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len 32 * sub_180aca63.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _922) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    require mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357] <= 4294967296 and mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + mem[(32 * _922) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], ext_call.return_data[0 len 28] + 357]) + 32 <= return_data.size
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit StratHarvest(msg.sender);
}



}
