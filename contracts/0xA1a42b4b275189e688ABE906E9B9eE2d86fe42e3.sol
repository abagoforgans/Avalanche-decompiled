contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint64 stor51;
uint128 stor51; offset 64
address owner;
address _trustedForwarderAddress;
address masterAccount;
uint256 minDeposit;
uint8 stor153;
mapping of uint256 dappBalances;
mapping of uint256 depositorBalances;
mapping of uint8 stor156;
mapping of address tokenPriceFeed;

function depositorBalances(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return depositorBalances[arg1][arg2]
}

function minDeposit() {
    return minDeposit
}

function _trustedForwarder() {
    return _trustedForwarderAddress
}

function dappBalances(uint256 arg1) {
    require calldata.size - 4 >= 32
    return dappBalances[arg1]
}

function owner() {
    return owner
}

function tokenPriceFeed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenPriceFeed[arg1]
}

function masterAccount() {
    return masterAccount
}

function allowedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor156[arg1])
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (_trustedForwarderAddress == arg1)
}

function renounceOwnership() {
    if _trustedForwarderAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMinDeposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _trustedForwarderAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    minDeposit = arg1
    emit MinimumDepositChanged(arg1, msg.sender);
}

function setMasterAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _trustedForwarderAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    masterAccount = arg1
    emit MasterAccountChanged(arg1, msg.sender);
}

function setTokenAllowed(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _trustedForwarderAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Token address cannot be 0'
    stor156[address(arg1)] = uint8(arg2)
    emit DepositTokenAdded(arg1, msg.sender);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _trustedForwarderAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    call masterAccount with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, arg1, masterAccount);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _trustedForwarderAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _trustedForwarderAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BICO:: Invalid address for new trusted forwarder'
    _trustedForwarderAddress = arg1
    emit TrustedForwarderChanged(arg1, msg.sender);
}

function depositFor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        if _trustedForwarderAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must be EOA or trusted forwarder'
    if msg.value <= 0:
        revert with 0, 'No value provided to depositFor.'
    if msg.value < minDeposit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must be grater than minimum deposit for this network'
    call masterAccount with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if dappBalances[arg1] > !msg.value:
        revert with 0, 17
    dappBalances[arg1] += msg.value
    if depositorBalances[msg.sender][arg1] > !msg.value:
        revert with 0, 17
    depositorBalances[msg.sender][arg1] += msg.value
    emit Deposit(msg.sender, msg.value, arg1);
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        _trustedForwarderAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            _trustedForwarderAddress = arg1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                _trustedForwarderAddress = arg1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    _trustedForwarderAddress = arg1
                else:
                    uint16(stor0.field_0) = 257
                    _trustedForwarderAddress = arg1
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint16(stor0.field_0) = 257
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint16(stor0.field_0) = 257
    if _trustedForwarderAddress != msg.sender:
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        uint64(stor51.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, stor51.field_64) = 0
        emit OwnershipTransferred(owner, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if uint8(stor0.field_8):
        stor153 = 0
    else:
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        stor153 = 0
        uint8(stor0.field_8) = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if msg.value <= 0:
            revert with 0, 'No value provided to fallback.'
        if tx.origin != msg.sender:
            revert with 0, 'Only EOA can deposit directly.'
        if depositorBalances[msg.sender][0] > !msg.value:
            revert with 0, 17
        depositorBalances[msg.sender][0] += msg.value
        emit Deposit(msg.sender, msg.value, 0);
    else:
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x56c022bb(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x15f69012(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if _trustedForwarderAddress != msg.sender:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    else:
                        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Token address cannot be 0'
                    stor156[address(cd[4])] = uint8(bool(cd[36]))
                    emit DepositTokenAdded(address(cd[4]), msg.sender);
                else:
                    if unknown_0x201d0f82(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        return depositorBalances[cd[4]][cd[36]]
                    if uint32(call.func_hash) >> 224 != unknown_0x2e1a7d4d(?????):
                        require unknown_0x41b3d185(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return minDeposit
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if _trustedForwarderAddress != msg.sender:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    else:
                        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'Ownable: caller is not the owner'
                    call masterAccount with:
                       value cd[4] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(msg.sender, cd[4], masterAccount);
            else:
                if unknown_0x56c022bb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _trustedForwarderAddress
                if unknown_0x572b6c05(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return (_trustedForwarderAddress == address(cd[4]))
                if unknown_0x5d9c31d3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return dappBalances[cd[4]]
                if uint32(call.func_hash) >> 224 != unknown_0x6d88f451(?????):
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if _trustedForwarderAddress != msg.sender:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    else:
                        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require calldata.size - 4 >= 32
                    if msg.sender != tx.origin:
                        if _trustedForwarderAddress != msg.sender:
                            revert with 0, 'sender must be EOA or trusted forwarder'
                    if msg.value <= 0:
                        revert with 0, 'No value provided to depositFor.'
                    if msg.value < minDeposit:
                        revert with 0, 'Must be grater than minimum deposit for this network'
                    call masterAccount with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if dappBalances[cd[4]] > !msg.value:
                        revert with 0, 17
                    dappBalances[cd[4]] += msg.value
                    if depositorBalances[msg.sender][cd[4]] > !msg.value:
                        revert with 0, 17
                    depositorBalances[msg.sender][cd[4]] += msg.value
                    emit Deposit(msg.sender, msg.value, cd[4]);
        else:
            if unknown_0xa040cb85(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x8fcc9cfb(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x9878cbb3(?????):
                        require unknown_0x9afd453c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return masterAccount
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return tokenPriceFeed[cd[4]]
                require not msg.value
                require calldata.size - 4 >= 32
                if _trustedForwarderAddress != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                minDeposit = cd[4]
                emit MinimumDepositChanged(cd[4], msg.sender);
            else:
                if unknown_0xa040cb85(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if _trustedForwarderAddress != msg.sender:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    else:
                        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            revert with 0, 'Ownable: caller is not the owner'
                    masterAccount = address(cd[4])
                    emit MasterAccountChanged(address(cd[4]), msg.sender);
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc4d66de8(?????):
                        if unknown_0xda742228(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if _trustedForwarderAddress != msg.sender:
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                            else:
                                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                                    revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'BICO:: Invalid address for new trusted forwarder'
                            _trustedForwarderAddress = address(cd[4])
                            emit TrustedForwarderChanged(address(cd[4]), msg.sender);
                        else:
                            if unknown_0xe744092e(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                return bool(stor156[cd[4]])
                            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if _trustedForwarderAddress != msg.sender:
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                            else:
                                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                                    revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(cd[4])
                            emit OwnershipTransferred(owner, address(cd[4]));
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if uint8(stor0.field_8):
                            _trustedForwarderAddress = address(cd[4])
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                _trustedForwarderAddress = address(cd[4])
                            else:
                                uint16(stor0.field_0) = 257
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    _trustedForwarderAddress = address(cd[4])
                                else:
                                    uint16(stor0.field_0) = 257
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        _trustedForwarderAddress = address(cd[4])
                                    else:
                                        uint16(stor0.field_0) = 257
                                        _trustedForwarderAddress = address(cd[4])
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if not uint8(stor0.field_8):
                                            uint16(stor0.field_0) = 257
                                            if uint8(stor0.field_0):
                                                revert with 0, 'Initializable: contract is already initialized'
                                            if not uint8(stor0.field_8):
                                                uint16(stor0.field_0) = 257
                                                uint8(stor0.field_8) = 0
                                                if uint8(stor0.field_0):
                                                    revert with 0, 'Initializable: contract is already initialized'
                                                if not uint8(stor0.field_8):
                                                    uint16(stor0.field_0) = 257
                        if _trustedForwarderAddress != msg.sender:
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                        else:
                            uint64(stor51.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                            Mask(96, 0, stor51.field_64) = 0
                            emit OwnershipTransferred(owner, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                        if uint8(stor0.field_8):
                            stor153 = 0
                        else:
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            stor153 = 0
                            uint8(stor0.field_8) = 0
}



}
