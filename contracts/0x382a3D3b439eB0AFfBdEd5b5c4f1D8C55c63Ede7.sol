contract main {




// =====================  Runtime code  =====================


#
#  - mint1t1Synth(uint256 arg1, uint256 arg2)
#
const PRICE_PRECISION = 10^18

const DEFAULT_ADMIN_ROLE = 0

const MAX_FEE = 5 * 10^16

const COLLATERAL_RATIO_PRECISION = 10^18

const COLLATERAL_RATIO_MAX = 10^18

const FEE_PRECISION = 10^18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint32 stor101;
address collateralReserveAddress;
address shareAddress;
address synthAddress;
address collateralTokenAddress;
address sub_0572382eAddress;
mapping of uint256 lastAction;
uint256 mintingFee;
uint256 redemptionFee;
uint256 sub_87dc192f;
bool stor110; offset 256
uint8 stor110;
uint8 stor110; offset 8
uint256 stor110; offset 8
uint256 stor110;
mapping of uint8 stor160;

function sub_0572382e(?) payable {
    return sub_0572382eAddress
}

function synth() payable {
    return synthAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function redemptionFee() payable {
    return redemptionFee
}

function collateralReserve() payable {
    return address(collateralReserveAddress)
}

function mintingFee() payable {
    return mintingFee
}

function lastAction(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastAction[arg1]
}

function mintPaused() payable {
    return bool(uint8(stor110.field_0))
}

function sub_87dc192f(?) payable {
    return sub_87dc192f
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function share() payable {
    return shareAddress
}

function whitelistContracts(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor160[arg1])
}

function collateralToken() payable {
    return collateralTokenAddress
}

function redeemPaused() payable {
    return bool(uint8(stor110.field_8))
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function setCollateralReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, ']Caller is not a maintainer'
    address(collateralReserveAddress) = arg1
}

function getSynthPrice() payable {
    require ext_code.size(synthAddress)
    staticcall synthAddress.0xc6320ab9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setActionDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, ']Caller is not a maintainer'
    if arg1 <= 0:
        revert with 0, 'Delay should not be zero'
    sub_87dc192f = arg1
}

function toggleRedeeming() payable {
    if not roleAdmin[0x539440820030c4994db4e31b6b800deafd503688728f932addfe7a410515c14c][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a pauser'
    Mask(248, 0, stor110.field_8) = Mask(248, 0, not uint8(stor110.field_8))
    emit RedeemingToggled(bool(0 or uint8(not uint8(stor110.field_8))));
}

function toggleMinting() payable {
    if not roleAdmin[0x539440820030c4994db4e31b6b800deafd503688728f932addfe7a410515c14c][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a pauser'
    uint256(stor110.field_0) = not uint8(stor110.field_0) or Mask(248, 8, uint256(stor110.field_0))
    emit MintingToggled(bool(uint8(not uint8(stor110.field_0))));
}

function setMintingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, ']Caller is not a maintainer'
    if arg1 > 5 * 10^16:
        revert with 0, 'The new fee is too high'
    mintingFee = arg1
    emit SetMintingFee(arg1);
}

function removeWhitelistContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, ']Caller is not a maintainer'
    if not stor160[address(arg1)]:
        revert with 0, 'Contract was not whitelisted'
    stor160[address(arg1)] = 0
}

function setRedemptionFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, ']Caller is not a maintainer'
    if arg1 > 5 * 10^16:
        revert with 0, 'The new fee is too high'
    redemptionFee = arg1
    emit SetRedemptionFee(arg1);
}

function addWhitelistContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, ']Caller is not a maintainer'
    if not arg1:
        revert with 0, 'Invalid address'
    if stor160[address(arg1)]:
        revert with 0, 'Contract was whitelisted'
    stor160[address(arg1)] = 1
}

function getCollateralPrice() payable {
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xf890e286 with:
            gas gas_remaining wei
           args collateralTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args collateralTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x25416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b00,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function withdrawFee() payable {
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, ']Caller is not a maintainer'
    require ext_code.size(collateralTokenAddress)
    staticcall collateralTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(collateralTokenAddress)
    call collateralTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthAddress)
    staticcall synthAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthAddress)
    call synthAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareAddress)
    call shareAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        address(collateralReserveAddress) = arg1
        collateralTokenAddress = arg2
        synthAddress = arg3
        shareAddress = arg4
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(collateralReserveAddress) = arg1
            collateralTokenAddress = arg2
            synthAddress = arg3
            shareAddress = arg4
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            address(collateralReserveAddress) = arg1
            collateralTokenAddress = arg2
            synthAddress = arg3
            shareAddress = arg4
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(arg5)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg5
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg5)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg5, msg.sender);
    if not roleAdmin[roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(arg5)].field_0:
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0++
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_0 = arg5
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_160 = 0
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(arg5)].field_0 = roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0
        emit RoleGranted(0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18, arg5, msg.sender);
    sub_87dc192f = 1
    uint8(stor110.field_0) = 1
    uint8(stor110.field_8) = 1
    stor110.field_256 % 1 = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function mintAlgorithmicSynth(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor110.field_0):
        revert with 0, 'Minting is paused'
    if msg.sender != tx.origin:
        if not stor160[msg.sender]:
            revert with 0, 'dAllow non-contract only'
    if sub_87dc192f + lastAction[msg.sender] < lastAction[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    require block.number >= sub_87dc192f + lastAction[msg.sender]
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No enough Share'
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xece667c7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Collateral ratio must be 0'
    require ext_code.size(synthAddress)
    staticcall synthAddress.0xc6320ab9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0x5b1dac60 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if mintingFee > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / ext_call.return_data[0]:
            if arg2 > 0:
                revert with 0, 'Slippage limit reached'
            if 0 > 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(shareAddress)
            call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, 0 / ext_call.return_data[0]
        else:
            if (10^18 * 0 / ext_call.return_data[0]) - (mintingFee * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -mintingFee + 10^18:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if arg2 > (10^18 * 0 / ext_call.return_data[0]) - (mintingFee * 0 / ext_call.return_data[0]) / 10^18:
                revert with 0, 'Slippage limit reached'
            if (10^18 * 0 / ext_call.return_data[0]) - (mintingFee * 0 / ext_call.return_data[0]) / 10^18 > 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(shareAddress)
            call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, (10^18 * 0 / ext_call.return_data[0]) - (mintingFee * 0 / ext_call.return_data[0]) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (0 / ext_call.return_data[0]) - ((10^18 * 0 / ext_call.return_data[0]) - (mintingFee * 0 / ext_call.return_data[0]) / 10^18)
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if mintingFee > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            if arg2 > 0:
                revert with 0, 'Slippage limit reached'
            if 0 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(shareAddress)
            call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
        else:
            if (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (mintingFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != -mintingFee + 10^18:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if arg2 > (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (mintingFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18:
                revert with 0, 'Slippage limit reached'
            if (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (mintingFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(shareAddress)
            call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (mintingFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (mintingFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function redeemAlgorithmicSynth(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor110.field_8):
        revert with 0, 'Redeeming is paused'
    if msg.sender != tx.origin:
        if not stor160[msg.sender]:
            revert with 0, 'dAllow non-contract only'
    if sub_87dc192f + lastAction[msg.sender] < lastAction[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    require block.number >= sub_87dc192f + lastAction[msg.sender]
    require ext_code.size(synthAddress)
    staticcall synthAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No enough synth'
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xb05241a2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Collateral ratio must be 0'
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0x5b1dac60 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthAddress)
    staticcall synthAddress.0xc6320ab9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if redemptionFee > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / ext_call.return_data[0]:
            lastAction[msg.sender] = block.number
            if arg2 > 0:
                revert with 0, 'Slippage limit reached'
            require ext_code.size(synthAddress)
            call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(shareAddress)
            call shareAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -redemptionFee + 10^18:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            lastAction[msg.sender] = block.number
            if arg2 > (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18:
                revert with 0, 'Slippage limit reached'
            require ext_code.size(synthAddress)
            call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(shareAddress)
            call shareAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if not ext_call.return_data[0] * arg1 / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if redemptionFee > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / ext_call.return_data[0]:
                lastAction[msg.sender] = block.number
                if arg2 > 0:
                    revert with 0, 'Slippage limit reached'
                require ext_code.size(synthAddress)
                call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                call shareAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -redemptionFee + 10^18:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                lastAction[msg.sender] = block.number
                if arg2 > (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18:
                    revert with 0, 'Slippage limit reached'
                require ext_code.size(synthAddress)
                call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                call shareAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18
        else:
            if 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0] * arg1 / 10^18 != 10^18:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if redemptionFee > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0]:
                lastAction[msg.sender] = block.number
                if arg2 > 0:
                    revert with 0, 'Slippage limit reached'
                require ext_code.size(synthAddress)
                call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                call shareAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if (10^18 * 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0]) - (redemptionFee * 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0] != -redemptionFee + 10^18:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                lastAction[msg.sender] = block.number
                if arg2 > (10^18 * 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0]) - (redemptionFee * 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0]) / 10^18:
                    revert with 0, 'Slippage limit reached'
                require ext_code.size(synthAddress)
                call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(shareAddress)
                call shareAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (10^18 * 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0]) - (redemptionFee * 10^18 * ext_call.return_data[0] * arg1 / 10^18 / ext_call.return_data[0]) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function redeem1t1Synth(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor110.field_8):
        revert with 0, 'Redeeming is paused'
    if msg.sender != tx.origin:
        if not stor160[msg.sender]:
            revert with 0, 'dAllow non-contract only'
    if sub_87dc192f + lastAction[msg.sender] < lastAction[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    require block.number >= sub_87dc192f + lastAction[msg.sender]
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xb05241a2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 10^18:
        revert with 0, 'Collateral ratio must be == 1'
    require ext_code.size(synthAddress)
    staticcall synthAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No enough synth'
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xf890e286 with:
            gas gas_remaining wei
           args collateralTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args collateralTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthAddress)
    staticcall synthAddress.0xc6320ab9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if redemptionFee > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(collateralTokenAddress)
            staticcall collateralTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(collateralReserveAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'Not enough collateral in pool'
            if arg2 > 0:
                revert with 0, 'Slippage limit reached'
            if 0 > 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args msg.sender, collateralTokenAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args this.address, collateralTokenAddress, 0 / ext_call.return_data[0]
        else:
            if (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != -redemptionFee + 10^18:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            require ext_code.size(collateralTokenAddress)
            staticcall collateralTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(collateralReserveAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18 > ext_call.return_data[0]:
                revert with 0, 'Not enough collateral in pool'
            if arg2 > (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18:
                revert with 0, 'Slippage limit reached'
            if (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18 > 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args msg.sender, collateralTokenAddress, (10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args this.address, collateralTokenAddress, (0 / ext_call.return_data[0]) - ((10^18 * 0 / ext_call.return_data[0]) - (redemptionFee * 0 / ext_call.return_data[0]) / 10^18)
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if redemptionFee > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            require ext_code.size(collateralTokenAddress)
            staticcall collateralTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(collateralReserveAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'Not enough collateral in pool'
            if arg2 > 0:
                revert with 0, 'Slippage limit reached'
            if 0 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args msg.sender, collateralTokenAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args this.address, collateralTokenAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
        else:
            if (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (redemptionFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != -redemptionFee + 10^18:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            require ext_code.size(collateralTokenAddress)
            staticcall collateralTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(collateralReserveAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (redemptionFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18 > ext_call.return_data[0]:
                revert with 0, 'Not enough collateral in pool'
            if arg2 > (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (redemptionFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18:
                revert with 0, 'Slippage limit reached'
            if (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (redemptionFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18 > ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastAction[msg.sender] = block.number
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args msg.sender, collateralTokenAddress, (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (redemptionFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args this.address, collateralTokenAddress, (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - ((10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) - (redemptionFee * ext_call.return_data[0] * arg1 / ext_call.return_data[0]) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(synthAddress)
    call synthAddress.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function redeemFractionalSynth(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor110.field_8):
        revert with 0, 'Redeeming is paused'
    if msg.sender != tx.origin:
        if not stor160[msg.sender]:
            revert with 0, 'dAllow non-contract only'
    if sub_87dc192f + lastAction[msg.sender] < lastAction[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    require block.number >= sub_87dc192f + lastAction[msg.sender]
    require ext_code.size(synthAddress)
    staticcall synthAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No enough synth'
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xb05241a2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x64436f6c6c61746572616c20726174696f206e6565647320746f206265206c6f776572207468616e2031303025206f7220686967686572207468616e2030,
                    mem[226 len 2]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x64436f6c6c61746572616c20726174696f206e6565647320746f206265206c6f776572207468616e2031303025206f7220686967686572207468616e2030,
                    mem[226 len 2]
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0x5b1dac60 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthAddress)
    staticcall synthAddress.0xc6320ab9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xf890e286 with:
            gas gas_remaining wei
           args collateralTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args collateralTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if redemptionFee > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(collateralTokenAddress)
        staticcall collateralTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(collateralReserveAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'Not enough collateral in pool'
        if arg3 > 0 / ext_call.return_data[0]:
            revert with 0, 32, 35, 0x74536c697070616765206c696d69742072656163686564205b436f6c6c61746572616c, mem[647 len 29]
        if arg2 > 0 / ext_call.return_data[0]:
            revert with 0, 'Slippage limit reached [Share]'
        lastAction[address(msg.sender)] = block.number
        require ext_code.size(synthAddress)
        call synthAddress.burnFrom(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(synthAddress)
        call synthAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(shareAddress)
        call shareAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(collateralReserveAddress))
        call address(collateralReserveAddress).0xa4293ead with:
             gas gas_remaining wei
            args msg.sender, collateralTokenAddress, 0 / ext_call.return_data[0]
    else:
        if (10^18 * arg1) - (redemptionFee * arg1) / arg1 != -redemptionFee + 10^18:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not (10^18 * arg1) - (redemptionFee * arg1) / 10^18:
            if (10^18 * arg1) - (redemptionFee * arg1) / 10^18 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(collateralTokenAddress)
            staticcall collateralTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(collateralReserveAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'Not enough collateral in pool'
            if arg3 > 0 / ext_call.return_data[0]:
                revert with 0, 32, 35, 0x74536c697070616765206c696d69742072656163686564205b436f6c6c61746572616c, mem[647 len 29]
            if arg2 > 0 / ext_call.return_data[0]:
                revert with 0, 'Slippage limit reached [Share]'
            lastAction[address(msg.sender)] = block.number
            require ext_code.size(synthAddress)
            call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synthAddress)
            call synthAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, arg1 - ((10^18 * arg1) - (redemptionFee * arg1) / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(shareAddress)
            call shareAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(collateralReserveAddress))
            call address(collateralReserveAddress).0xa4293ead with:
                 gas gas_remaining wei
                args msg.sender, collateralTokenAddress, 0 / ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / (10^18 * arg1) - (redemptionFee * arg1) / 10^18 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if (10^18 * arg1) - (redemptionFee * arg1) / 10^18 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(collateralTokenAddress)
                    staticcall collateralTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(collateralReserveAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'Not enough collateral in pool'
                    if arg3 > 0 / ext_call.return_data[0]:
                        revert with 0, 32, 35, 0x74536c697070616765206c696d69742072656163686564205b436f6c6c61746572616c, mem[647 len 29]
                    if arg2 > 0 / ext_call.return_data[0]:
                        revert with 0, 'Slippage limit reached [Share]'
                    lastAction[address(msg.sender)] = block.number
                    require ext_code.size(synthAddress)
                    call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, arg1 - ((10^18 * arg1) - (redemptionFee * arg1) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(shareAddress)
                    call shareAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(collateralReserveAddress))
                    call address(collateralReserveAddress).0xa4293ead with:
                         gas gas_remaining wei
                        args msg.sender, collateralTokenAddress, 0 / ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[581 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(collateralTokenAddress)
                    staticcall collateralTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(collateralReserveAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'Not enough collateral in pool'
                    if arg3 > ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0]:
                        revert with 0, 32, 35, 0x74536c697070616765206c696d69742072656163686564205b436f6c6c61746572616c, mem[647 len 29]
                    if arg2 > 0 / ext_call.return_data[0]:
                        revert with 0, 'Slippage limit reached [Share]'
                    lastAction[address(msg.sender)] = block.number
                    require ext_code.size(synthAddress)
                    call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, arg1 - ((10^18 * arg1) - (redemptionFee * arg1) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(shareAddress)
                    call shareAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(collateralReserveAddress))
                    call address(collateralReserveAddress).0xa4293ead with:
                         gas gas_remaining wei
                        args msg.sender, collateralTokenAddress, ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0]
            else:
                if (10^18 * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) / ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 != -ext_call.return_data[0] + 10^18:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(collateralTokenAddress)
                    staticcall collateralTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(collateralReserveAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'Not enough collateral in pool'
                    if arg3 > 0 / ext_call.return_data[0]:
                        revert with 0, 32, 35, 0x74536c697070616765206c696d69742072656163686564205b436f6c6c61746572616c, mem[647 len 29]
                    if arg2 > (10^18 * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) / ext_call.return_data[0]:
                        revert with 0, 'Slippage limit reached [Share]'
                    lastAction[address(msg.sender)] = block.number
                    require ext_code.size(synthAddress)
                    call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, arg1 - ((10^18 * arg1) - (redemptionFee * arg1) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(shareAddress)
                    call shareAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10^18 * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(collateralReserveAddress))
                    call address(collateralReserveAddress).0xa4293ead with:
                         gas gas_remaining wei
                        args msg.sender, collateralTokenAddress, 0 / ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[581 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(collateralTokenAddress)
                    staticcall collateralTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(collateralReserveAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'Not enough collateral in pool'
                    if arg3 > ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0]:
                        revert with 0, 32, 35, 0x74536c697070616765206c696d69742072656163686564205b436f6c6c61746572616c, mem[647 len 29]
                    if arg2 > (10^18 * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) / ext_call.return_data[0]:
                        revert with 0, 'Slippage limit reached [Share]'
                    lastAction[address(msg.sender)] = block.number
                    require ext_code.size(synthAddress)
                    call synthAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, arg1 - ((10^18 * arg1) - (redemptionFee * arg1) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(shareAddress)
                    call shareAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10^18 * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(collateralReserveAddress))
                    call address(collateralReserveAddress).0xa4293ead with:
                         gas gas_remaining wei
                        args msg.sender, collateralTokenAddress, ext_call.return_data[0] * ext_call.return_data[0] * (10^18 * arg1) - (redemptionFee * arg1) / 10^18 / 10^18 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintFractionalSynth(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor110.field_0):
        revert with 0, 'Minting is paused'
    if msg.sender != tx.origin:
        if not stor160[msg.sender]:
            revert with 0, 'dAllow non-contract only'
    if sub_87dc192f + lastAction[msg.sender] < lastAction[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    require block.number >= sub_87dc192f + lastAction[msg.sender]
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0x5b1dac60 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xf890e286 with:
            gas gas_remaining wei
           args collateralTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args collateralTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthAddress)
    staticcall synthAddress.0xc6320ab9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(collateralReserveAddress))
    staticcall address(collateralReserveAddress).0xece667c7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x77436f6c6c61746572616c20726174696f206d757374206e6f742062652031303025206f722030,
                    mem[203 len 25]
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x77436f6c6c61746572616c20726174696f206d757374206e6f742062652031303025206f722030,
                    mem[203 len 25]
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'No enough Share'
    if not arg1:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if -ext_call.return_data[0] + 10^18:
                if 0 / -ext_call.return_data[0] + 10^18:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if ext_call.return_data[0] > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if -ext_call.return_data[0] + 10^18:
            if 0 / -ext_call.return_data[0] + 10^18:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if mintingFee > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / ext_call.return_data[0] / 10^18:
                if arg3 > 0:
                    revert with 0, 'Slippage limit reached'
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                    revert with 0, 'Not enough Share inputted'
                if 0 > 0 / ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                lastAction[msg.sender] = block.number
                require ext_code.size(shareAddress)
                call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(collateralTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                mem[800 len 4] = uint32(arg1)
                call collateralTokenAddress with:
                   funct uint32(stor101)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[708]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 787 len 22]
                require ext_code.size(synthAddress)
                call synthAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(synthAddress)
                call synthAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / ext_call.return_data[0] / 10^18
            else:
                if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 0 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                if arg3 > (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18:
                    revert with 0, 'Slippage limit reached'
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                    revert with 0, 'Not enough Share inputted'
                if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18 > 0 / ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                lastAction[msg.sender] = block.number
                require ext_code.size(shareAddress)
                call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(collateralTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                mem[800 len 4] = uint32(arg1)
                call collateralTokenAddress with:
                   funct uint32(stor101)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[708]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 787 len 22]
                require ext_code.size(synthAddress)
                call synthAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(synthAddress)
                call synthAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, (0 / ext_call.return_data[0] / 10^18) - ((10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18)
        else:
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if mintingFee > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 0 / ext_call.return_data[0] / 10^18:
                    if arg3 > 0:
                        revert with 0, 'Slippage limit reached'
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                        revert with 0, 'Not enough Share inputted'
                    if 0 > 0 / ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastAction[msg.sender] = block.number
                    require ext_code.size(shareAddress)
                    call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = uint32(arg1)
                    call collateralTokenAddress with:
                       funct uint32(stor101)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / ext_call.return_data[0] / 10^18
                else:
                    if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 0 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                    if arg3 > (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18:
                        revert with 0, 'Slippage limit reached'
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                        revert with 0, 'Not enough Share inputted'
                    if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18 > 0 / ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastAction[msg.sender] = block.number
                    require ext_code.size(shareAddress)
                    call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = uint32(arg1)
                    call collateralTokenAddress with:
                       funct uint32(stor101)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (0 / ext_call.return_data[0] / 10^18) - ((10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18)
            else:
                if 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if mintingFee > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18:
                    if arg3 > 0:
                        revert with 0, 'Slippage limit reached'
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                        revert with 0, 'Not enough Share inputted'
                    if 0 > 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastAction[msg.sender] = block.number
                    require ext_code.size(shareAddress)
                    call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = uint32(arg1)
                    call collateralTokenAddress with:
                       funct uint32(stor101)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
                else:
                    if (10^18 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                    if arg3 > (10^18 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) / 10^18:
                        revert with 0, 'Slippage limit reached'
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                        revert with 0, 'Not enough Share inputted'
                    if (10^18 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) / 10^18 > 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastAction[msg.sender] = block.number
                    require ext_code.size(shareAddress)
                    call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(collateralTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = uint32(arg1)
                    call collateralTokenAddress with:
                       funct uint32(stor101)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10^18 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synthAddress)
                    call synthAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) - ((10^18 * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18) / 10^18)
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if -ext_call.return_data[0] + 10^18:
                if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / -ext_call.return_data[0] + 10^18 != ext_call.return_data[0] * arg1:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if ext_call.return_data[0] > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[0] + 10^18:
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0]:
                if ext_call.return_data[0] * arg1 < ext_call.return_data[0] * arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] * arg1:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 0 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (0 / ext_call.return_data[0] / 10^18) - ((10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18)
                else:
                    if 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 10^18:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18 > 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - ((10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18)
            else:
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if (ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1) < ext_call.return_data[0] * arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not (ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 0 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (0 / ext_call.return_data[0] / 10^18) - ((10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18)
                else:
                    if (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / (ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1) != 10^18:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if 0 / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18 > (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, ((10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - ((10^18 * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * 0 / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18)
        else:
            if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / -ext_call.return_data[0] + 10^18 != ext_call.return_data[0] * arg1:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]:
                if ext_call.return_data[0] * arg1 < ext_call.return_data[0] * arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0] * arg1:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 0 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (0 / ext_call.return_data[0] / 10^18) - ((10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18)
                else:
                    if 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 10^18:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18 > 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - ((10^18 * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) - (mintingFee * 10^18 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 10^18) / 10^18)
            else:
                if ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] / (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1) < ext_call.return_data[0] * arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 0 / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18 > 0 / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (0 / ext_call.return_data[0] / 10^18) - ((10^18 * 0 / ext_call.return_data[0] / 10^18) - (mintingFee * 0 / ext_call.return_data[0] / 10^18) / 10^18)
                else:
                    if (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * arg1) != 10^18:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if mintingFee > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18:
                        if arg3 > 0:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if 0 > (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18
                    else:
                        if (10^18 * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18 != -mintingFee + 10^18:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[517 len 31]
                        if arg3 > (10^18 * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18:
                            revert with 0, 'Slippage limit reached'
                        if (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0] > arg2:
                            revert with 0, 'Not enough Share inputted'
                        if (10^18 * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18 > (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        lastAction[msg.sender] = block.number
                        require ext_code.size(shareAddress)
                        call shareAddress.burnFrom(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(collateralTokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(collateralReserveAddress), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = uint32(arg1)
                        call collateralTokenAddress with:
                           funct uint32(stor101)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x255361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (10^18 * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synthAddress)
                        call synthAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, ((10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - ((10^18 * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) - (mintingFee * (10^18 * ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] * arg1) / ext_call.return_data[0] * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * arg1) / ext_call.return_data[0] / 10^18) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
