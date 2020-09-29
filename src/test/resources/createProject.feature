
Feature: Items
@APItest
  Scenario: As a user I want to create a Item so that organize my task

    Given I have authentication to todo.ly

    When I send POST request 'api/items.json' with json
    """
    {
       "Content":"CUCUMBER",
    }
    """

    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
    "Id": EXCLUDE,
    "Content": "CUCUMBER",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": EXCLUDE,
    "ItemOrder": EXCLUDE,
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": EXCLUDE
}
    """
    And I get the property value 'Id' and save on ID_ITEMS
    And I get the property value 'Content' and save on NAME_ITEMS

    When I send PUT request 'api/items/ID_ITEMS.json' with json
    """
    {
       "Content":"NAME_ITEMS UPDATE",
       "Icon": 4
    }
    """

    # verificar el response

    Then I expected the response code 200
    And I expected the response body is equal
    """
  {
    "Id": ID_ITEMS,
    "Content": "NAME_ITEMS UPDATE",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": EXCLUDE,
    "ItemOrder": EXCLUDE,
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": EXCLUDE
}
    """
    When I send GET request 'api/items/ID_ITEMS.json' with json
    """

    """
    Then I expected the response code 200
    And I expected the response body is equal
      """
  {
    "Id": ID_ITEMS,
    "Content": "NAME_ITEMS UPDATE",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": EXCLUDE,
    "ItemOrder": EXCLUDE,
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": EXCLUDE
}
    """



  When I send DELETE request 'api/items/ID_ITEMS.json' with json
    """

    """
    Then I expected the response code 200
    And I expected the response body is equal
  """
    {
    "Id": ID_ITEMS,
    "Content": "NAME_ITEMS UPDATE",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": EXCLUDE,
    "ItemOrder": EXCLUDE,
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": true,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": EXCLUDE
}
  """

