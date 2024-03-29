// SPDX-License-Identifier: Apache-2.0
pragma solidity >=0.8.4;

interface IFactory {
    //projectCount;
    function newProject(
        string calldata projectName,
        address owner,
        string calldata avatar
    ) external;

    function addPlatformModule(string calldata moduleName, address implement) external;

    function isPlatformModule(string calldata moduleName) external view returns (bool);

    function getPlatformModuleImplement(string calldata moduleName) external view returns (address);

    function getProjectControllerAddr(string calldata projectName) external view returns (address);

    event LogNewProject(string projectName, address controllerAddr, string avatar);
    event LogModuleAdded(string moduleName, address implement);
}
