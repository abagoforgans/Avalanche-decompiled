contract main {




// =====================  Runtime code  =====================


#
#  - ratifyMint(uint256 arg1, address arg2, uint256 arg3)
#
const RATIFY_MINT_SIGS = 1

const MULTISIG_MINT_SIGS = 3

const PAUSED_IMPLEMENTATION = 0x3c8984dce8f68fcdeeeafd9e0eca3598562ed291


address owner;
uint256 stor0;
array of address stor1;
uint256 instantMintThreshold;
uint256 ratifiedMintThreshold;
uint256 multiSigMintThreshold;
uint256 instantMintLimit;
uint256 ratifiedMintLimit;
uint256 multiSigMintLimit;
uint256 instantMintPool;
uint256 ratifiedMintPool;
uint256 multiSigMintPool;
array of address ratifiedPoolRefillApprovals;
address stor12;
uint256 stor12;
uint8 mintPaused;
uint256 mintReqInvalidBeforeThisBlock;
address mintKeyAddress;
array of struct mintOperations;
address tokenAddress;
address registryAdminAddress;
mapping of uint8 stor19;
mapping of uint8 stor20;
uint8 stor21;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727731;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727732;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727733;
array of uint8 stor12396694973890998440467380340983585058878106250672390494374587083972727727734;

function sub_104cd304(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function ratifiedMintThreshold() payable {
    return ratifiedMintThreshold
}

function multiSigMintThreshold() payable {
    return multiSigMintThreshold
}

function mintOperationCount() payable {
    return mintOperations.length
}

function ratifiedMintPool() payable {
    return ratifiedMintPool
}

function multiSigMintLimit() payable {
    return multiSigMintLimit
}

function mintKey() payable {
    return mintKeyAddress
}

function registryAdmin() payable {
    return registryAdminAddress
}

function instantMintThreshold() payable {
    return instantMintThreshold
}

function mintPaused() payable {
    return bool(mintPaused)
}

function instantMintPool() payable {
    return instantMintPool
}

function owner() payable {
    return address(owner)
}

function ratifiedPoolRefillApprovals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return ratifiedPoolRefillApprovals[arg1]
}

function multiSigMintPool() payable {
    return multiSigMintPool
}

function mintReqInvalidBeforeThisBlock() payable {
    return mintReqInvalidBeforeThisBlock
}

function pendingOwner() payable {
    return stor1.length
}

function sub_e644a55f(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function ratifiedMintLimit() payable {
    return ratifiedMintLimit
}

function mintOperations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < mintOperations.length
    return mintOperations[arg1].field_0, 
           mintOperations[arg1].field_256,
           mintOperations[arg1].field_512,
           mintOperations[arg1].field_768,
           bool(mintOperations[arg1].field_1024)
}

function token() payable {
    return tokenAddress
}

function instantMintLimit() payable {
    return instantMintLimit
}

function _fallback() payable {
    revert
}

function unpauseMints() payable {
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    mintPaused = 0
    emit AllMintsPaused(0);
}

function initialize() payable {
    if stor21:
        revert with 0, 'already initialized'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor21 = 1
}

function invalidateAllPendingMints() payable {
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    mintReqInvalidBeforeThisBlock = block.number
}

function claimOwnership() payable {
    require msg.sender == stor1.length
    emit OwnershipTransferred(address(owner), stor1.length);
    address(owner) = stor1.length
    stor1.length = 0
}

function refillMultiSigMintPool() payable {
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    multiSigMintPool = multiSigMintLimit
    emit MultiSigPoolRefilled()
}

function setRegistryAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    registryAdminAddress = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    tokenAddress = arg1
    emit SetToken(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    stor1.length = arg1
    emit NewOwnerPending(address(owner), arg1);
}

function unpauseMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require arg1 < mintOperations.length
    mintOperations[arg1].field_1024 = 0
    emit MintPaused(arg1, 0);
}

function claimTrueCurrencyProxyOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9965b3d6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestReclaimEther() payable {
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9a6a30a4 with:
         gas gas_remaining wei
        args address(owner)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function issueClaimOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(arg1)
    call arg1.0x4e71e0c8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimEther(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pauseToken() payable {
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3659cfe6 with:
         gas gas_remaining wei
        args 0x3c8984dce8f68fcdeeeafd9e0eca3598562ed291
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMintThresholds(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require arg1 <= arg2
    require arg2 <= arg3
    instantMintThreshold = arg1
    ratifiedMintThreshold = arg2
    multiSigMintThreshold = arg3
    emit MintThresholdChanged(arg1, arg2, arg3);
}

function upgradeTrueCurrencyProxyImplTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3659cfe6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTrueCurrencyProxyOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf1739cae with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestReclaimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x88ee39cc with:
         gas gas_remaining wei
        args address(arg1), address(owner)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferChild(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferChild(arg1, arg2);
}

function setBurnBounds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(tokenAddress)
    call tokenAddress with:
       funct Mask(32, 224, 'R`P') >> 224
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pauseMints() payable {
    if not stor19[msg.sender]:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x72546f6b656e436f6e74726f6c6c65723a204d75737420626520706175736572206f72206f776e65,
                        mem[204 len 24]
    mintPaused = 1
    emit AllMintsPaused(1);
}

function setIsMintPauser(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if registryAdminAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x68546f6b656e436f6e74726f6c6c65723a204d7573742062652072656769737472792061646d696e206f72206f776e65,
                        mem[212 len 16]
    stor19[address(arg1)] = uint8(arg2)
}

function setIsMintRatifier(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if registryAdminAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x68546f6b656e436f6e74726f6c6c65723a204d7573742062652072656769737472792061646d696e206f72206f776e65,
                        mem[212 len 16]
    stor20[address(arg1)] = uint8(arg2)
}

function transferMintKey(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73546f6b656e436f6e74726f6c6c65723a204e6577206d696e74206b65792063616e6e6f74206265203078,
                    mem[207 len 21]
    emit TransferMintKey(mintKeyAddress, arg1);
    mintKeyAddress = arg1
}

function pauseMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor19[msg.sender]:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x72546f6b656e436f6e74726f6c6c65723a204d75737420626520706175736572206f72206f776e65,
                        mem[204 len 24]
    require arg1 < mintOperations.length
    mintOperations[arg1].field_1024 = 1
    emit MintPaused(arg1, 1);
}

function setMintLimits(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require arg1 <= arg2
    require arg2 <= arg3
    instantMintLimit = arg1
    if arg1 < instantMintPool:
        instantMintPool = instantMintLimit
    ratifiedMintLimit = arg2
    if arg2 < ratifiedMintPool:
        ratifiedMintPool = ratifiedMintLimit
    multiSigMintLimit = arg3
    if arg3 < multiSigMintPool:
        multiSigMintPool = multiSigMintLimit
    emit MintLimitsChanged(arg1, arg2, arg3);
}

function revokeMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if mintKeyAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x64546f6b656e436f6e74726f6c6c65723a204d757374206265206d696e744b6579206f72206f776e65,
                        mem[205 len 23]
    require arg1 < mintOperations.length
    mintOperations[arg1].field_0 = 0
    mintOperations[arg1].field_256 = 0
    mintOperations[arg1].field_512 = 0
    mintOperations[arg1].field_768 = 0
    mintOperations[arg1].field_1024 = 0
    emit RevokeMint(arg1);
}

function reclaimToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'TokenController: Only Owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setBlacklisted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if registryAdminAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x68546f6b656e436f6e74726f6c6c65723a204d7573742062652072656769737472792061646d696e206f72206f776e65,
                        mem[212 len 16]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd01dd6d2 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setCanBurn(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if registryAdminAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x68546f6b656e436f6e74726f6c6c65723a204d7573742062652072656769737472792061646d696e206f72206f776e65,
                        mem[212 len 16]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x80749656 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CanBurn(address(arg1), arg2);
}

function refillInstantMintPool() payable {
    if not stor20[msg.sender]:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x79546f6b656e436f6e74726f6c6c65723a204d757374206265207261746966696572206f72206f776e65,
                        mem[206 len 22]
    if instantMintPool > instantMintLimit:
        revert with 0, 'SafeMath: subtraction overflow'
    if instantMintLimit - instantMintPool > ratifiedMintPool:
        revert with 0, 'SafeMath: subtraction overflow'
    ratifiedMintPool = ratifiedMintPool - instantMintLimit + instantMintPool
    instantMintPool = instantMintLimit
    emit InstantPoolRefilled()
}

function requestMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        if mintPaused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x30546f6b656e436f6e74726f6c6c65723a204d696e74696e67206973207061757365,
                        mem[198 len 30]
    if mintKeyAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x64546f6b656e436f6e74726f6c6c65723a204d757374206265206d696e744b6579206f72206f776e65,
                        mem[205 len 23]
    emit RequestMint(mintOperations.length, msg.sender, arg1, arg2);
    mintOperations.length++
    mintOperations[mintOperations.length].field_0 = arg1
    stor1B68[stor16.length] = arg2
    stor1B68[stor16.length] = block.number
    stor1B68[stor16.length] = 0
    stor1B68[stor16.length] = 0
}

function hasEnoughApproval(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > ratifiedMintPool:
        if arg2 > multiSigMintPool:
            if address(owner) != msg.sender:
                return 0
        else:
            if arg2 > multiSigMintThreshold:
                if address(owner) != msg.sender:
                    return 0
            else:
                if arg1 < 3:
                    if address(owner) != msg.sender:
                        return 0
    else:
        if arg2 > ratifiedMintThreshold:
            if arg2 > multiSigMintPool:
                if address(owner) != msg.sender:
                    return 0
            else:
                if arg2 > multiSigMintThreshold:
                    if address(owner) != msg.sender:
                        return 0
                else:
                    if arg1 < 3:
                        if address(owner) != msg.sender:
                            return 0
        else:
            if arg1 < 1:
                if arg2 > multiSigMintPool:
                    if address(owner) != msg.sender:
                        return 0
                else:
                    if arg2 > multiSigMintThreshold:
                        if address(owner) != msg.sender:
                            return 0
                    else:
                        if arg1 < 3:
                            if address(owner) != msg.sender:
                                return 0
    return 1
}

function instantMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        if mintPaused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x30546f6b656e436f6e74726f6c6c65723a204d696e74696e67206973207061757365,
                        mem[198 len 30]
    if mintKeyAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x64546f6b656e436f6e74726f6c6c65723a204d757374206265206d696e744b6579206f72206f776e65,
                        mem[205 len 23]
    if arg2 > instantMintThreshold:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x72546f6b656e436f6e74726f6c6c65723a204f7665722074686520696e7374616e74206d696e74207468726573686f6c,
                    mem[212 len 16]
    if arg2 > instantMintPool:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64546f6b656e436f6e74726f6c6c65723a20496e7374616e74206d696e7420706f6f6c206973206472,
                    mem[205 len 23]
    instantMintPool -= arg2
    emit InstantMint(arg1, arg2, msg.sender);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refillRatifiedMintPool() payable {
    if not stor20[msg.sender]:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x79546f6b656e436f6e74726f6c6c65723a204d757374206265207261746966696572206f72206f776e65,
                        mem[206 len 22]
        ratifiedPoolRefillApprovals.length = 0
        uint256(stor12) = 0
        if ratifiedMintPool > ratifiedMintLimit:
            revert with 0, 'SafeMath: subtraction overflow'
        if ratifiedMintLimit - ratifiedMintPool > multiSigMintPool:
            revert with 0, 'SafeMath: subtraction overflow'
        multiSigMintPool = multiSigMintPool - ratifiedMintLimit + ratifiedMintPool
        ratifiedMintPool = ratifiedMintLimit
        emit RatifyPoolRefilled()
    else:
        if msg.sender == address(owner):
            ratifiedPoolRefillApprovals.length = 0
            uint256(stor12) = 0
            if ratifiedMintPool > ratifiedMintLimit:
                revert with 0, 'SafeMath: subtraction overflow'
            if ratifiedMintLimit - ratifiedMintPool > multiSigMintPool:
                revert with 0, 'SafeMath: subtraction overflow'
            multiSigMintPool = multiSigMintPool - ratifiedMintLimit + ratifiedMintPool
            ratifiedMintPool = ratifiedMintLimit
            emit RatifyPoolRefilled()
        else:
            idx = 160
            s = 11
            while 224 > idx + 32:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            require ratifiedPoolRefillApprovals.length != msg.sender
            require mem[204 len 20] != msg.sender
            if not ratifiedPoolRefillApprovals.length:
                ratifiedPoolRefillApprovals.length = msg.sender
            else:
                if not mem[204 len 20]:
                    address(stor12) = msg.sender
                else:
                    ratifiedPoolRefillApprovals.length = 0
                    uint256(stor12) = 0
                    if ratifiedMintPool > ratifiedMintLimit:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ratifiedMintLimit - ratifiedMintPool > multiSigMintPool:
                        revert with 0, 'SafeMath: subtraction overflow'
                    multiSigMintPool = multiSigMintPool - ratifiedMintLimit + ratifiedMintPool
                    ratifiedMintPool = ratifiedMintLimit
                    emit RatifyPoolRefilled()
}

function canFinalize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < mintOperations.length
    if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
        revert with 0, 32, 37, 0x72546f6b656e436f6e74726f6c6c65723a2054686973206d696e7420697320696e76616c69, mem[521 len 27]
    if mintOperations[arg1].field_1024:
        revert with 0, 32, 36, 0xfe546f6b656e436f6e74726f6c6c65723a2054686973206d696e74206973207061757365, mem[520 len 28]
    if mintOperations[arg1].field_256 > ratifiedMintPool:
        if mintOperations[arg1].field_256 > multiSigMintPool:
            if address(owner) != msg.sender:
                revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
        else:
            if mintOperations[arg1].field_256 > multiSigMintThreshold:
                if address(owner) != msg.sender:
                    revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
            else:
                if mintOperations[arg1].field_768 < 3:
                    if address(owner) != msg.sender:
                        revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
    else:
        if mintOperations[arg1].field_256 > ratifiedMintThreshold:
            if mintOperations[arg1].field_256 > multiSigMintPool:
                if address(owner) != msg.sender:
                    revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
            else:
                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                    if address(owner) != msg.sender:
                        revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
                else:
                    if mintOperations[arg1].field_768 < 3:
                        if address(owner) != msg.sender:
                            revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
        else:
            if mintOperations[arg1].field_768 < 1:
                if mintOperations[arg1].field_256 > multiSigMintPool:
                    if address(owner) != msg.sender:
                        revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
                else:
                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                        if address(owner) != msg.sender:
                            revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
                    else:
                        if mintOperations[arg1].field_768 < 3:
                            if address(owner) != msg.sender:
                                revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[521 len 27]
    return 1
}

function finalizeMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        if mintPaused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x30546f6b656e436f6e74726f6c6c65723a204d696e74696e67206973207061757365,
                        mem[198 len 30]
    require arg1 < mintOperations.length
    require arg1 < mintOperations.length
    if address(owner) != msg.sender:
        if mintReqInvalidBeforeThisBlock >= mintOperations[arg1].field_512:
            revert with 0, 32, 37, 0x72546f6b656e436f6e74726f6c6c65723a2054686973206d696e7420697320696e76616c69, mem[841 len 27]
        if mintOperations[arg1].field_1024:
            revert with 0, 32, 36, 0xfe546f6b656e436f6e74726f6c6c65723a2054686973206d696e74206973207061757365, mem[840 len 28]
        if mintOperations[arg1].field_256 > ratifiedMintPool:
            if mintOperations[arg1].field_256 > multiSigMintPool:
                if address(owner) != msg.sender:
                    revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
            else:
                if mintOperations[arg1].field_256 > multiSigMintThreshold:
                    if address(owner) != msg.sender:
                        revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
                else:
                    if mintOperations[arg1].field_768 < 3:
                        if address(owner) != msg.sender:
                            revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
        else:
            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                if mintOperations[arg1].field_256 > multiSigMintPool:
                    if address(owner) != msg.sender:
                        revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
                else:
                    if mintOperations[arg1].field_256 > multiSigMintThreshold:
                        if address(owner) != msg.sender:
                            revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
                    else:
                        if mintOperations[arg1].field_768 < 3:
                            if address(owner) != msg.sender:
                                revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
            else:
                if mintOperations[arg1].field_768 < 1:
                    if mintOperations[arg1].field_256 > multiSigMintPool:
                        if address(owner) != msg.sender:
                            revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
                    else:
                        if mintOperations[arg1].field_256 > multiSigMintThreshold:
                            if address(owner) != msg.sender:
                                revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
                        else:
                            if mintOperations[arg1].field_768 < 3:
                                if address(owner) != msg.sender:
                                    revert with 0, 32, 37, 0x68546f6b656e436f6e74726f6c6c65723a204e6f7420656e6f75676820617070726f76616c, mem[841 len 27]
        if mintOperations[arg1].field_256 > ratifiedMintPool:
            if mintOperations[arg1].field_256 > multiSigMintPool:
                revert with 0, 'SafeMath: subtraction overflow'
            multiSigMintPool -= mintOperations[arg1].field_256
        else:
            if mintOperations[arg1].field_256 > ratifiedMintThreshold:
                if mintOperations[arg1].field_256 > multiSigMintPool:
                    revert with 0, 'SafeMath: subtraction overflow'
                multiSigMintPool -= mintOperations[arg1].field_256
            else:
                if mintOperations[arg1].field_256 > ratifiedMintPool:
                    revert with 0, 'SafeMath: subtraction overflow'
                ratifiedMintPool -= mintOperations[arg1].field_256
    mintOperations[arg1].field_0 = 0
    mintOperations[arg1].field_256 = 0
    mintOperations[arg1].field_512 = 0
    mintOperations[arg1].field_768 = 0
    mintOperations[arg1].field_1024 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args mintOperations[arg1].field_0, mintOperations[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FinalizeMint(arg1, msg.sender, mintOperations[arg1].field_0, mintOperations[arg1].field_256);
}



}
