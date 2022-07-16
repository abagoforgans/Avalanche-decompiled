contract main {




// =====================  Runtime code  =====================


#
#  - sub_928695b9(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address managerAddress;
address rewardPoolAddress;
address goldTokenAddress;
address currentRouterAddress;
address routerAddress;
address DEADAddress;
address stor7;
address teamWalletAddress;
address treasuryWalletAddress;
uint256 swapThreshold;
uint256 sub_ddf0185f;
uint256 sub_e7694bc6;
uint16 stor13;
uint16 stor13; offset 16
uint16 stor13; offset 32
uint16 stor13; offset 48
uint16 stor13; offset 64
uint16 stor14;
uint16 stor14; offset 16
uint16 stor14; offset 32
uint8 stor15;
mapping of uint8 stor16;

function DEAD() {
    return DEADAddress
}

function swapThreshold() {
    return swapThreshold
}

function currentRouter() {
    return currentRouterAddress
}

function treasuryWallet() {
    return treasuryWalletAddress
}

function manager() {
    return managerAddress
}

function teamWallet() {
    return teamWalletAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function rewardPool() {
    return rewardPoolAddress
}

function owner() {
    return owner
}

function goldToken() {
    return goldTokenAddress
}

function claimFee() {
    return sub_e7694bc6
}

function sub_ddf0185f(?) {
    return sub_ddf0185f
}

function sub_e7694bc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, '0'
    return sub_e7694bc6
}

function router() {
    return routerAddress
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function _fallback() payable {
    revert
}

function sub_5e58bea5(?) {
    return uint16(stor14.field_0), uint16(stor14.field_0), uint16(stor14.field_32)
}

function sub_1cb8eae1(?) {
    return uint16(stor13.field_0), uint16(stor13.field_0), uint16(stor13.field_0), uint16(stor13.field_0), uint16(stor13.field_64)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function updateClaimFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e7694bc6 = arg1
}

function updateMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ddf0185f = arg1
}

function updateManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    managerAddress = arg1
}

function setMarketing(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamWalletAddress = arg1
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryWalletAddress = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    return 1
}

function sub_db36ebf2(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapThreshold = arg1
    stor15 = uint8(bool(arg2))
}

function setBlacklisted(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = uint8(arg2)
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_168fea07(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call goldTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_644afb7c(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor14.field_0) = uint16(arg1)
    uint16(stor14.field_16) = uint16(arg2)
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 'NH{q', 17
    uint16(stor14.field_32) = uint16(uint16(arg1) + uint16(arg2))
}

function updatePoolAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall goldTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args rewardPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call rewardPoolAddress.0xc4076876 with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewardPoolAddress = arg1
}

function sub_a7f602d7(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor13.field_0) = uint16(arg1)
    uint16(stor13.field_16) = uint16(arg2)
    uint16(stor13.field_32) = uint16(arg3)
    uint16(stor13.field_48) = uint16(arg4)
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg1) + uint16(arg2)) > -uint16(arg3) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(uint16(arg1) + uint16(arg2)) + uint16(arg3)) > -uint16(arg4) + 65535:
        revert with 'NH{q', 17
    uint16(stor13.field_64) = uint16(uint16(uint16(uint16(arg1) + uint16(arg2)) + uint16(arg3)) + uint16(arg4))
}

function claim() {
    if not msg.sender:
        revert with 0, '0'
    if stor16[address(msg.sender)]:
        revert with 0, 'banned'
    call managerAddress.claim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'norwrd'
    if not msg.sender:
        revert with 0, '0'
    if ext_call.return_data[0] and sub_e7694bc6 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * sub_e7694bc6 / 100 <= 0:
        revert with 0, 'nofee'
    if ext_call.return_data[0] < ext_call.return_data[0] * sub_e7694bc6 / 100:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_e7694bc6 / 100)
    call rewardPoolAddress.0xc4076876 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * sub_e7694bc6 / 100)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] * sub_e7694bc6 / 100 and uint16(stor14.field_16) > -1 / ext_call.return_data[0] * sub_e7694bc6 / 100:
        revert with 'NH{q', 17
    if not uint16(stor14.field_32):
        revert with 'NH{q', 18
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = goldTokenAddress
    mem[(2 * ceil32(return_data.size)) + 160] = stor7
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_e7694bc6 / 100 * uint16(stor14.field_16) / uint16(stor14.field_32)
    call rewardPoolAddress.0xc4076876 with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0] * sub_e7694bc6 / 100 * uint16(stor14.field_16) / uint16(stor14.field_32)
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_e7694bc6 / 100 * uint16(stor14.field_16) / uint16(stor14.field_32)
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] * sub_e7694bc6 / 100 * uint16(stor14.field_16) / uint16(stor14.field_32), 0, 160, teamWalletAddress, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] * sub_e7694bc6 / 100 and uint16(stor14.field_0) > -1 / ext_call.return_data[0] * sub_e7694bc6 / 100:
        revert with 'NH{q', 17
    if not uint16(stor14.field_32):
        revert with 'NH{q', 18
    mem[(4 * ceil32(return_data.size)) + 224] = goldTokenAddress
    mem[(4 * ceil32(return_data.size)) + 256] = stor7
    call rewardPoolAddress.0xc4076876 with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0] * sub_e7694bc6 / 100 * uint16(stor14.field_0) / uint16(stor14.field_32)
    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * sub_e7694bc6 / 100 * uint16(stor14.field_0) / uint16(stor14.field_32)
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = (6 * ceil32(return_data.size)) + 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] * sub_e7694bc6 / 100 * uint16(stor14.field_0) / uint16(stor14.field_32), 0, 160, treasuryWalletAddress, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3521b2cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not msg.sender:
        revert with 0, 'ZERO address'
    if arg1:
        staticcall managerAddress.0xa74d6b73 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        staticcall managerAddress.0x88776ccd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        staticcall managerAddress.0x7376058f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if ext_call.return_data[0]:
                staticcall managerAddress.0x5b7c132f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                staticcall managerAddress.0xd223ed46 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if not ext_call.return_data[0]:
                return 1
            staticcall managerAddress.0x5b7c132f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            staticcall managerAddress.0xd223ed46 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                return 1
    else:
        staticcall managerAddress.nodeBalanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            staticcall managerAddress.0xa74d6b73 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            staticcall managerAddress.0x88776ccd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            staticcall managerAddress.0x7376058f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    staticcall managerAddress.0x5b7c132f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    staticcall managerAddress.0xd223ed46 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if not ext_call.return_data[0]:
                    return 1
                staticcall managerAddress.0x5b7c132f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                staticcall managerAddress.0xd223ed46 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    return 1
        else:
            staticcall managerAddress.0x11ac8e6a with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            staticcall managerAddress.0x8d807fad with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= ext_call.return_data[0] / 2:
                staticcall managerAddress.0x7376058f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    return 1
                staticcall managerAddress.0x5b7c132f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                staticcall managerAddress.0xd223ed46 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    return 1
            else:
                staticcall managerAddress.0xa74d6b73 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                staticcall managerAddress.0x88776ccd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                staticcall managerAddress.0x7376058f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    if ext_call.return_data[0]:
                        staticcall managerAddress.0x5b7c132f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall managerAddress.0xd223ed46 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if not ext_call.return_data[0]:
                        return 1
                    staticcall managerAddress.0x5b7c132f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    staticcall managerAddress.0xd223ed46 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        return 1
    return 0
}

function sub_c8c82737(?) {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if not msg.sender:
        revert with 0, '0'
    staticcall managerAddress.0xa74d6b73 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall managerAddress.0x88776ccd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall managerAddress.0x7376058f with:
            gas gas_remaining wei
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            staticcall managerAddress.0x5b7c132f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            staticcall managerAddress.0xd223ed46 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        revert with 0, 'cant create'
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
        staticcall managerAddress.0x11ac8e6a with:
                gas gas_remaining wei
               args msg.sender
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'error'
        mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
        staticcall goldTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'blnce'
        mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
        staticcall managerAddress.nodeBalanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 1 >= sub_ddf0185f:
            revert with 0, 'mxwlt'
        mem[(8 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 132] = this.address
        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        call goldTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'trfr'
        mem[(10 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(10 * ceil32(return_data.size)) + 132] = 1
        call managerAddress.0x39f4d868 with:
             gas gas_remaining wei
            args msg.sender, 1
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(11 * ceil32(return_data.size)) + 100] = this.address
        staticcall goldTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > swapThreshold:
            mem[(12 * ceil32(return_data.size)) + 100] = this.address
            staticcall goldTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if uint16(stor13.field_64):
                if ext_call.return_data[0] and uint16(stor13.field_16) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] and uint16(stor13.field_0) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] and uint16(stor13.field_48) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] and uint16(stor13.field_32) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * uint16(stor13.field_0) / uint16(stor13.field_64) > 0:
                    mem[(13 * ceil32(return_data.size)) + 100] = rewardPoolAddress
                    mem[(13 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * uint16(stor13.field_0) / uint16(stor13.field_64)
                    call goldTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args rewardPoolAddress, ext_call.return_data[0] * uint16(stor13.field_0) / uint16(stor13.field_64)
                    mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(14 * ceil32(return_data.size)) + 96] = 2
                    mem[(14 * ceil32(return_data.size)) + 128] = goldTokenAddress
                    mem[(14 * ceil32(return_data.size)) + 160] = stor7
                    mem[(14 * ceil32(return_data.size)) + 196] = this.address
                    mem[(14 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(14 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(15 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(15 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 128
                    t = (15 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64), 0, 160, teamWalletAddress, block.timestamp, 2, mem[(15 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(15 * ceil32(return_data.size)) + 192] = 2
                    mem[(15 * ceil32(return_data.size)) + 224] = goldTokenAddress
                    mem[(15 * ceil32(return_data.size)) + 256] = stor7
                    mem[(15 * ceil32(return_data.size)) + 292] = this.address
                    mem[(15 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[(15 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (16 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(16 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(16 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[(16 * ceil32(return_data.size)) + 324] = 0
                    mem[(16 * ceil32(return_data.size)) + 356] = 160
                    mem[(16 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (15 * ceil32(return_data.size)) + 224
                    t = (16 * ceil32(return_data.size)) + 484
                    while idx < mem[(15 * ceil32(return_data.size)) + 192]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(16 * ceil32(return_data.size)) + 388] = treasuryWalletAddress
                    mem[(16 * ceil32(return_data.size)) + 420] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64), 0, 160, treasuryWalletAddress, block.timestamp, mem[(16 * ceil32(return_data.size)) + 452 len (32 * mem[(15 * ceil32(return_data.size)) + 192]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(16 * ceil32(return_data.size)) + 320] = goldTokenAddress
                    mem[(16 * ceil32(return_data.size)) + 352] = stor7
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    mem[(16 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(18 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(18 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    idx = 0
                    s = (16 * ceil32(return_data.size)) + 320
                    t = (18 * ceil32(return_data.size)) + 580
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64)), 0, 160, address(this.address), block.timestamp, 2, mem[(18 * ceil32(return_data.size)) + 580 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2 > 0:
                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args goldTokenAddress, Mask(255, 1, ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64)), 0, 0, teamWalletAddress, block.timestamp, mem[(18 * ceil32(return_data.size)) + 580 len 33 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit AutoLiquify(eth.balance(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2);
                else:
                    mem[(13 * ceil32(return_data.size)) + 96] = 2
                    mem[(13 * ceil32(return_data.size)) + 128] = goldTokenAddress
                    mem[(13 * ceil32(return_data.size)) + 160] = stor7
                    mem[(13 * ceil32(return_data.size)) + 196] = this.address
                    mem[(13 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(13 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(14 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(14 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(14 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 128
                    t = (14 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64), 0, 160, teamWalletAddress, block.timestamp, 2, mem[(14 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(14 * ceil32(return_data.size)) + 192] = 2
                    mem[(14 * ceil32(return_data.size)) + 224] = goldTokenAddress
                    mem[(14 * ceil32(return_data.size)) + 256] = stor7
                    mem[(14 * ceil32(return_data.size)) + 292] = this.address
                    mem[(14 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[(14 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (15 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(15 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(15 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[(15 * ceil32(return_data.size)) + 324] = 0
                    mem[(15 * ceil32(return_data.size)) + 356] = 160
                    mem[(15 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (14 * ceil32(return_data.size)) + 224
                    t = (15 * ceil32(return_data.size)) + 484
                    while idx < mem[(14 * ceil32(return_data.size)) + 192]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64), 0, 160, treasuryWalletAddress, block.timestamp, mem[(15 * ceil32(return_data.size)) + 452 len (32 * mem[(14 * ceil32(return_data.size)) + 192]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(15 * ceil32(return_data.size)) + 288] = 2
                    mem[(15 * ceil32(return_data.size)) + 320] = goldTokenAddress
                    mem[(15 * ceil32(return_data.size)) + 352] = stor7
                    mem[(15 * ceil32(return_data.size)) + 388] = this.address
                    mem[(15 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    mem[(15 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (16 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(16 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(16 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    mem[(16 * ceil32(return_data.size)) + 420] = 0
                    mem[(16 * ceil32(return_data.size)) + 452] = 160
                    mem[(16 * ceil32(return_data.size)) + 548] = 2
                    idx = 0
                    s = (15 * ceil32(return_data.size)) + 320
                    t = (16 * ceil32(return_data.size)) + 580
                    while idx < mem[(15 * ceil32(return_data.size)) + 288]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(16 * ceil32(return_data.size)) + 484] = this.address
                    mem[(16 * ceil32(return_data.size)) + 516] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (16 * ceil32(return_data.size)) + (32 * mem[(15 * ceil32(return_data.size)) + 288]) + -mem[64] + 576]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2 > 0:
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = teamWalletAddress
                        mem[mem[64] + 164] = block.timestamp
                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args goldTokenAddress, Mask(255, 1, ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64)), 0, 0, teamWalletAddress, block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _390 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_390] == mem[_390]
                        require mem[_390 + 32] == mem[_390 + 32]
                        require mem[_390 + 64] == mem[_390 + 64]
                        emit AutoLiquify(eth.balance(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2);
    else:
        staticcall managerAddress.0x5b7c132f with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
        staticcall managerAddress.0xd223ed46 with:
                gas gas_remaining wei
               args msg.sender
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            revert with 0, 'cant create'
        mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
        staticcall managerAddress.0x11ac8e6a with:
                gas gas_remaining wei
               args msg.sender
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'error'
        mem[(8 * ceil32(return_data.size)) + 100] = msg.sender
        staticcall goldTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'blnce'
        mem[(10 * ceil32(return_data.size)) + 100] = msg.sender
        staticcall managerAddress.nodeBalanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 1 >= sub_ddf0185f:
            revert with 0, 'mxwlt'
        mem[(11 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(11 * ceil32(return_data.size)) + 132] = this.address
        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        call goldTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'trfr'
        mem[(12 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(12 * ceil32(return_data.size)) + 132] = 1
        call managerAddress.0x39f4d868 with:
             gas gas_remaining wei
            args msg.sender, 1
        mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(13 * ceil32(return_data.size)) + 100] = this.address
        staticcall goldTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > swapThreshold:
            mem[(14 * ceil32(return_data.size)) + 100] = this.address
            staticcall goldTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if uint16(stor13.field_64):
                if ext_call.return_data[0] and uint16(stor13.field_16) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] and uint16(stor13.field_0) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] and uint16(stor13.field_48) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] and uint16(stor13.field_32) > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not uint16(stor13.field_64):
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * uint16(stor13.field_0) / uint16(stor13.field_64) > 0:
                    mem[(15 * ceil32(return_data.size)) + 100] = rewardPoolAddress
                    mem[(15 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * uint16(stor13.field_0) / uint16(stor13.field_64)
                    call goldTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args rewardPoolAddress, ext_call.return_data[0] * uint16(stor13.field_0) / uint16(stor13.field_64)
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(16 * ceil32(return_data.size)) + 96] = 2
                    mem[(16 * ceil32(return_data.size)) + 128] = goldTokenAddress
                    mem[(16 * ceil32(return_data.size)) + 160] = stor7
                    mem[(16 * ceil32(return_data.size)) + 196] = this.address
                    mem[(16 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(16 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(18 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(18 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(18 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (16 * ceil32(return_data.size)) + 128
                    t = (18 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64), 0, 160, teamWalletAddress, block.timestamp, 2, mem[(18 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(18 * ceil32(return_data.size)) + 192] = 2
                    mem[(18 * ceil32(return_data.size)) + 224] = goldTokenAddress
                    mem[(18 * ceil32(return_data.size)) + 256] = stor7
                    mem[(18 * ceil32(return_data.size)) + 292] = this.address
                    mem[(18 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[(18 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (19 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(19 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(19 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[(19 * ceil32(return_data.size)) + 324] = 0
                    mem[(19 * ceil32(return_data.size)) + 356] = 160
                    mem[(19 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (18 * ceil32(return_data.size)) + 224
                    t = (19 * ceil32(return_data.size)) + 484
                    while idx < mem[(18 * ceil32(return_data.size)) + 192]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(19 * ceil32(return_data.size)) + 388] = treasuryWalletAddress
                    mem[(19 * ceil32(return_data.size)) + 420] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (19 * ceil32(return_data.size)) + (32 * mem[(18 * ceil32(return_data.size)) + 192]) + -mem[64] + 480]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _301 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_301]:
                        revert with 'NH{q', 50
                    mem[_301 + 32] = goldTokenAddress
                    if 1 >= mem[_301]:
                        revert with 'NH{q', 50
                    mem[_301 + 64] = stor7
                    mem[_301 + 100] = this.address
                    mem[_301 + 132] = ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    mem[_301 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _301 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_301 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[_301 + ceil32(return_data.size) + 100] = ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    mem[_301 + ceil32(return_data.size) + 132] = 0
                    mem[_301 + ceil32(return_data.size) + 164] = 160
                    mem[_301 + ceil32(return_data.size) + 260] = mem[_301]
                    idx = 0
                    s = _301 + 32
                    t = _301 + ceil32(return_data.size) + 292
                    while idx < mem[_301]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_301 + ceil32(return_data.size) + 196] = this.address
                    mem[_301 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _301 + ceil32(return_data.size) + (32 * mem[_301]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2 > 0:
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = teamWalletAddress
                        mem[mem[64] + 164] = block.timestamp
                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args goldTokenAddress, Mask(255, 1, ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64)), 0, 0, teamWalletAddress, block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_393] == mem[_393]
                        require mem[_393 + 32] == mem[_393 + 32]
                        require mem[_393 + 64] == mem[_393 + 64]
                        emit AutoLiquify(eth.balance(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2);
                else:
                    mem[(15 * ceil32(return_data.size)) + 96] = 2
                    mem[(15 * ceil32(return_data.size)) + 128] = goldTokenAddress
                    mem[(15 * ceil32(return_data.size)) + 160] = stor7
                    mem[(15 * ceil32(return_data.size)) + 196] = this.address
                    mem[(15 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(15 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (16 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(16 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(16 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * uint16(stor13.field_48) / uint16(stor13.field_64)
                    mem[(16 * ceil32(return_data.size)) + 228] = 0
                    mem[(16 * ceil32(return_data.size)) + 260] = 160
                    mem[(16 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (15 * ceil32(return_data.size)) + 128
                    t = (16 * ceil32(return_data.size)) + 388
                    while idx < mem[(15 * ceil32(return_data.size)) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(16 * ceil32(return_data.size)) + 292] = teamWalletAddress
                    mem[(16 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (16 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _200 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_200]:
                        revert with 'NH{q', 50
                    mem[_200 + 32] = goldTokenAddress
                    if 1 >= mem[_200]:
                        revert with 'NH{q', 50
                    mem[_200 + 64] = stor7
                    mem[_200 + 100] = this.address
                    mem[_200 + 132] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[_200 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _200 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_200 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[_200 + ceil32(return_data.size) + 100] = ext_call.return_data[0] * uint16(stor13.field_32) / uint16(stor13.field_64)
                    mem[_200 + ceil32(return_data.size) + 132] = 0
                    mem[_200 + ceil32(return_data.size) + 164] = 160
                    mem[_200 + ceil32(return_data.size) + 260] = mem[_200]
                    idx = 0
                    s = _200 + 32
                    t = _200 + ceil32(return_data.size) + 292
                    while idx < mem[_200]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_200 + ceil32(return_data.size) + 196] = treasuryWalletAddress
                    mem[_200 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _200 + ceil32(return_data.size) + (32 * mem[_200]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _300 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_300]:
                        revert with 'NH{q', 50
                    mem[_300 + 32] = goldTokenAddress
                    if 1 >= mem[_300]:
                        revert with 'NH{q', 50
                    mem[_300 + 64] = stor7
                    mem[_300 + 100] = this.address
                    mem[_300 + 132] = ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    call rewardPoolAddress.0xc4076876 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    mem[_300 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _300 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_300 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[_300 + ceil32(return_data.size) + 100] = ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2
                    mem[_300 + ceil32(return_data.size) + 132] = 0
                    mem[_300 + ceil32(return_data.size) + 164] = 160
                    mem[_300 + ceil32(return_data.size) + 260] = mem[_300]
                    idx = 0
                    s = _300 + 32
                    t = _300 + ceil32(return_data.size) + 292
                    while idx < mem[_300]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_300 + ceil32(return_data.size) + 196] = this.address
                    mem[_300 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _300 + ceil32(return_data.size) + (32 * mem[_300]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2 > 0:
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = teamWalletAddress
                        mem[mem[64] + 164] = block.timestamp
                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args goldTokenAddress, Mask(255, 1, ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64)), 0, 0, teamWalletAddress, block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _392 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_392] == mem[_392]
                        require mem[_392 + 32] == mem[_392 + 32]
                        require mem[_392 + 64] == mem[_392 + 64]
                        emit AutoLiquify(eth.balance(this.address), ext_call.return_data[0] * uint16(stor13.field_16) / uint16(stor13.field_64) / 2);
}



}
